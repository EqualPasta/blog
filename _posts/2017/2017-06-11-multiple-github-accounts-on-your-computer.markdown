---
layout: "post"
title: "Multiple GitHub Accounts on Your Computer"
date: "2017-06-11 14:24"
---

**Hello there!**  

The better part of this weekend have been spent setting up a Jekyll blog hosted on GitHub Pages. The site, after adding a custom theme based on the Jekyll template [Hyde](https://github.com/poole/hyde), now looks fairly okay. In addition, I've actually managed to land on an acceptable pseudonym, EqualPasta.  I guess the configuration phase of this blog project can be considered done. That means I actually have to start writing about something, which brings me to today's post.

Since I've decided to use a pseudonym, I'm now forced to have two GitHub accounts to not give away my identity. I also want to push commits to repositories on both accounts, preferably without any manual steps. That means, handling a new SSH key and map repositories to the correct key. Below you'll find a recipe on how I did it.

## Multiple Accounts Recipe
### 1. Create a new SSH Key
Similar to [how you generated a key to use with your first account](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/), you will need to generate an additional SSH key for your second account. In your terminal window of choice (Git Bash for instance) write:

```bash
  ssh-keygen -t rsa -C "your@email.com"
```

Be careful not to overwrite your existing key. Add a suffix when prompted about where to save the file. For instance, `id_rsa_equalpasta`.

### 2. Set up the SSH Key
Add the SSH key to GitHub by first copying the new key:

```bash
  clip < ~/.ssh/id_rsa_equalpasta.pub
```

Go to [GitHub key settings](https://github.com/settings/keys), click *new SSH key*, and
paste the key into the text field from your clipboard. Remember that this should be done on your new GitHub account!

Then, add the key to the SSH-agent on your machine:
```bash
  eval $(ssh-agent -s)
  ssh-add ~/.ssh/id_rsa_equalpasta
```

### 3. Create a SSH Config File
To be able to use multiple GitHub accounts on your computer, you'll need a SSH config file where we list the different keys. We will later set up a Git repository to use the correct key when pushing commits.

Create the config file:
```bash
  vi ~/.ssh/config
```

Add something like this to the file:
```
#alternative account
Host github.com-equalpasta
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_equalpasta

#personal account
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa
```

And save it.

### 4.Set up of Your Repository
1. Clone your repository from GitHub, `git@github.com:EqualPasta/blog.git`.
2. Cd into the folder and configure your Git. The name and email associated with each commit you push will be visible to GitHub and people in general. So, to change these values to something better suited for you, do:
```bash
  git config user.name "equalpasta"
  git config user.email "equalpasta@gmail.com"
```

3. Then, finally, update `git remote` to automatically use the correct key. This is done by modifying the remote git address to a host found in the SSH config file you just created. In my case, `github.com-equalpasta`. To change the origin remote do:
```bash
       git remote set-url origin git@github.com-equalpasta:EqualPasta/blog.git
```

so before:<br />
git@`github.com`:EqualPasta/blog.git

After:<br />
git@`github.com-equalpasta`:EqualPasta/blog.git

You should now, hopefully, be able to push commits to the repository. Existing repositories work as before, which means that you now can push to multiple accounts automatically.


## Further Reading
[Codetuts: Multiple accounts](https://code.tutsplus.com/tutorials/quick-tip-how-to-work-with-github-and-multiple-accounts--net-22574)<br />
[GitHub: Setup of SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)<br />
[Jexchan: Multiple accounts](https://gist.github.com/jexchan/2351996)<br />
[Keybits: Automatically use correct ssh key](https://www.keybits.net/post/automatically-use-correct-ssh-key-for-remote-git-repo/)
