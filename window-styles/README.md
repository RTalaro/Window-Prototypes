# Info

### Themes with working taskbars:
- Classic95
- Windows10_Light and Windows10_Dark
- Windows11_Light and Windows11_Dark

### Themes that need further revisions:
- Classic95
- Windows95
- Windows98
- Windows10_Light
- Windows11_Light and Windows11_Dark

As of now, a Mac Theme is nowhere in sight so we probably just have to recreate it.

Tip: If a Window uses a Theme and that Window's `Transparent` flag is ON but the BG still isn't transparent: go to the Window or (root) Control node's `Inspector > Theme > Window > Styles`, click on the resource, and uncheck `Draw Center`.

## How to Use

<b>In this project</b>
1. Navigate to `main.gd` and set `theme` in code

<b>In your own project</b>
1. Import the entire Themes folder into your project
2. Either in your Window node or root Control node, navigate to the node's `Inspector > Theme`
3. Right-click on the empty Theme, choose `Quick Load`, then pick your Theme (.tres file)
    OR
   Copy the Theme code from this `main.gd` to change the Theme of your own node in code

## Links
[Classic95, Classic311, and Windows11 (originally Modern11)](https://github.com/violinbg/godot-desktop-themes) by [violinbg](https://github.com/violinbg)<br>
[Windows95](https://github.com/mr-dreich/Godot-Windows-95-Theme/), [Windows98](https://github.com/mr-dreich/Godot-Window-98-Theme), [Windows10](https://github.com/mr-dreich/Godot-Windows-10-Theme/) by [mr-dreich](https://github.com/mr-dreich)
