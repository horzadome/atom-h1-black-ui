## H1 Black UI theme for Atom editor

A dark UI theme that adapts to most syntax themes.

![H1 Black UI](https://horzadome.github.io/atom-h1-black-ui/h1-black-ui-screenshot.png)

> The font used in the screenshot is [Fira Mono](https://github.com/mozilla/Fira).


### Install

```
apm install h1-black-ui
```

or go to __Settings > Install__ and search for `h1-black-ui`.

After installing, select "H1 Black" from the Settings > Themes > UI Themes drop-down menu.


### Settings

In the theme settings you can:

- Change the __Font Size__ to scale the whole UI up or down.
- Choose between 3 __Tab Sizing__ modes.
- Hide the  __dock buttons__.

To make changes, go to `Settings > Themes > One Dark UI > Settings` or the cog icon next to the theme picker.


### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use DevTools to find the right selectors):

```css
.theme-h1-black-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```


### FAQ

__Why do the colors change when I switch Syntax themes?__
This UI theme uses the same background color as the chosen syntax theme. If that syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.
