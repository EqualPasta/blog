---
layout: post
title: Country guesser game
date: 2022-04-14 15:16
---

I've yet again made a geograhpy quiz game on [tinyappthingy.com](https://tinyappthingy.com/country-guesser/). This time with drag and drop! Four capitals, countries and flags are displayed each round, and your job is to drag and match these together to score points. Now it can *-almost-* be fun to learn about which country goes with which flag.

[![Country guesser game](/assets/2022/country-guesser-game/country-guesser-game.png)](https://tinyappthingy.com/country-guesser)

I started out displaying the flags using flag emojis / unicode. Everything looked good while developing and testing the game in Firefox. But I soon discovered that unicode flags do not work at all in other browser like Chrome. What gives? Apparently [Windows 10 does not support Flag emojis](https://www.reddit.com/r/Windows10/comments/bsf3o9/any_reason_why_windows_10_doesnt_have_flag_emojis/). And the reason Firefox managed to display flag emojis is that they ship a built-in font. So to have this game working on all platforms I switched to flag images. I decided to not bundle the images within the app but instead rely on a CDN:

<https://cdnjs.com/libraries/flag-icon-css>

This works great. Images are fetched dynamically from the CDN and displayed in an `img` tag. However, this raised another issue with the offline functionality of the game. I've included a service worker and manifest to make the game installable on iOS and Android devices as an PWA. Effectively, in offline mode the game breaks since it fetches images from a CDN.

Flag emojis to the rescue! As a fallback whenever there is an error fetching the flag image I display a flag emoji. Since this is only a fallback I've chosen to ignore the issue this will cause on Windows 10 (except Firefox). Here's a snippet of how I've implemented the fallback:

```js
function getSvgUrl(countryCode) {
    const codePoints = countryCode
      .toLowerCase();
    const url = `https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/4.1.5/flags/4x3/${codePoints}.svg`
    return url;
}

function getFlagEmoji(countryCode) {
    const codePoints = countryCode
        .toUpperCase()
        .split('')
        .map(char =>  127397 + char.charCodeAt());
    return String.fromCodePoint(...codePoints);
}


export const MovableFlag = ({handler, countryCode}: FlagProps) => {
  const flagId = `flag-${countryCode}`;
  
  function addUnicodeFallback(ev) {
    const element = ev.target as HTMLElement;
    const parent = element.parentNode;
    parent.removeChild(element);
    const unicodeFlag = document.createElement("span");
    unicodeFlag.className = "fallback-unicode";
    unicodeFlag.innerHTML = getFlagEmoji(countryCode);
    parent.appendChild(unicodeFlag);
  }

  return (
    <div className="movable movable-flag"
    key={flagId}
    id={flagId}
    onMouseDown={e => handler.pickupMouse(e)} 
    onTouchStart={e => handler.pickupTouch(e)}>
        <img src={getSvgUrl(countryCode)} onError={addUnicodeFallback} />
    </div>
  )
};
```

The key here is the `onError` attribute that allows us to fallback to flag emojis whenever there is an error fetching the image. 

I guess there might be a way to pre fill the cache using the service worker, when the PWA's installed. But that can be for later.