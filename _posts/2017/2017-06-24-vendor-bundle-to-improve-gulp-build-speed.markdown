---
layout: post
title: Vendor bundle to improve Gulp build speed
date: '2017-06-24 16:04'
---

Since the previous [post](/2017/06/18/gulp-and-es2015-es6/) I've looked more into Gulp. I started migrating the tool website from the Express/React setup to use the [static-react-starter](https://github.com/EqualPasta/static-react-starter) project starter. The transition has worked fine so far, but I've realized some issues with the starter project.

* Gulp watch is slow to rebuild when the number of JavaScript files and dependencies increase.
* The resulting build structure is messy and results in urls that are long. Ideally I want a short path following the domain name.
* Each page is relatively large in file size, since the JavaScript files are not uglified.

The build time quickly became annoying. To fix this, I tried replacing `gulp.watch` with `watchify` for the JS files. [Watchify](https://github.com/substack/watchify) helps incrementally rebuilding your bundles while developing, and works together with [browserify](https://github.com/substack/node-browserify). This really helped speed up the script rebundling time. Before it could take anywhere from 5-10 seconds from saving a file to the update appeared in the browser. After the switch, it takes less than a second. However, the initial build time only improved marginally, if at all. After adding `uglify` to the *script* task, the initial build time was around 14 seconds.

<br />
# Creating an external vendor bundle
What solved this problem for me, was creating a vendor script bundle in addition to each subpage's app script bundle. This can be done by taking *Browserify's* `external` and `require` options in use. The result was that each app script bundle would only take around 1 second to build, whereas the vendor script bundle takes around 5 seconds to build. Much faster!

<br />
# Why you should do this
* You seldom update the dependencies of a project. Watching dependencies and building them more than once are unnecessary.
* In my case, each subpage utilizes mostly the same dependencies. Having a common bundle for vendor scripts might reduce load time because of caching.
* Improves the development workflow. Changes are propagated faster from the editor to your browser.
* With `gulp.parallel` the app subpage script bundling task and the vendor bundle task are conducted in parallel.

<br />
# Vendor bundle with Gulp recipe
## Import project dependencies
Start by loading the dependencies into your Gulp file:
```javascript
...
import packageJson from './package.json';

const dependencies = Object.keys(packageJson.dependencies || {});
...
```

The dependencies variable will contain a list of your project dependencies that you've added through `npm install <dep> --save`.

## Modify your script bundler Gulp task
You will need to tell *Browserify* about external requires. When Browserify encounters a require (or import) marked as external it will ignore it when building a bundle. Basically, it will trust you to add these dependencies through another script tag somewhere in your HTML.

```javascript
...

let b = browserify(opts);
b.external(dependencies);
b.transform(babelify);

...
```

## Create a vendor bundling Gulp task
After modifying the app bundling task to ignore the dependencies, you'll need to create a vendor script file.
Create a new Gulp task:

```javascript
export function vendorScripts() {
  return browserify()
  .require(dependencies)
  .bundle()
  .on('error', (err) => console.log(err))
  .pipe(source('vendor.js'))
  .pipe(buffer())
  .pipe(uglify({compress: {unused: false}}))
  .pipe(gulp.dest(dirs.dest + '/app'))
}
```
You will also have to include this new task in your build task:

```javascript
...

const build = gulp.series(clean, gulp.parallel(styles, vendorScripts, scripts, images, sounds, views))
export { build }

...
```
## Add new script tag
Somewhere in your HTML, above where the app bundle script is, include the vendor bundle script. For instance:

```html
...

<script src="/app/vendor.js"></script>
<script src="/app/tool1/entry.bundle.js"></script>

...
```

If you go to Chrome's Network tab in the inspect window, you can see both vendor.js and entry.bundle.js will be requested on page load.

To see the entire Gulp file, go [here](https://github.com/olavvatne/Unuseful/blob/master/gulpfile.babel.js).
