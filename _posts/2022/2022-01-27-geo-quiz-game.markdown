---
layout: post
title: Geo Quiz Game
date: 2022-01-27 10:00
---

I've recently been doing some web development experiments to test new stuff in the ever expanding JavaScript Ecosystem, and made a small site using Preact, TypeScript, SWC, Playwright (the list goes on) and a custom static site generator (SSG) in Webpack. This, together with the small bundle size of Preact, makes the site fast to load. And any previous knowledge about React is pretty much transferrable to Preact. Technical stuff aside, [I made a game](https://tinyappthingy.com/geo-quiz/).

[![Geo quiz game](/assets/2022/geo-quiz-game/geo-quiz-game.png)](https://tinyappthingy.com/geo-quiz/)

Not a very fun game because you have to type in the name of every country in the world to win. But if you win, you will be treated well by some CSS eye candy. 

One question that quickly came up while making it, was, well, like, which territories are considered countries and which are not. Because what do you do with Niue, a self-governing state in free-association with New Zealand, do you include it the game or not? So I kind of let the UN make that decision for me, and made the default option, only UN members. 

Another issue that had to be solved was guessing. Preferably you don't want a missing **the** to make the guess invalid. And some countries, or territories, or whatever, do include some special characters. Special in the sense that at least I'm not very used to them. So this is what I did to "sanitize" the guesses as much as possible:

```ts
export function normalizeName(name) {
    name = name.toLowerCase();
    name = name.normalize("NFD").replace(/[\u0300-\u036f]/g, "")
    name = name.replaceAll("the", "");
    name = name.replaceAll("of", "");
    name = name.replaceAll("-", "");
    name = name.replaceAll("federated", "");
    name = name.replaceAll("states", "");
    name = name.replaceAll("saint", "st");
    name = name.replaceAll(",", "");
    name = name.replaceAll(".", "");
    name = name.replaceAll("'", "");
    name = name.replaceAll("and", "");
    name = name.replaceAll(" ", "");
    return name;
  }
```

Basically, I remove some words and articles, remove special characters with `name.normalize("NFD").replace(/[\u0300-\u036f]/g, "")`, dot, commas. It allows users to write `saint`, `st` or even `st.`.

Example: 
```
Saint Barthélemy -> stbarlemy
The United States of America -> `unitedamerica
The Democratic Republic of the Congo -> democraticrepubliccongo
```


The downside is that `the Federated States of United America` is accepted as `The United States of America`, but I can live with that. 


