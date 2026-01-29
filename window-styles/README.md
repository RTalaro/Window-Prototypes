**Classic95 and windows_10_light are currently our best candidates for a custom Window Theme.**

**Modern11** is broken, **Classic311** is only missing the title bar (quick fix), and **Classic95** is ready for use.<br>
**Windows95** and **Windows98** have broken assets.<br>
windows_10_light and windows_10_dark are dependent on one another. **windows_10_light** needs the right color palette, a border, and a titlebar. **windows_10_dark** only needs its close icon fixed, then it will be ready for use.<br>

As of now, a Mac Theme is nowhere in sight so we probably just have to recreate it.

Tip: If a Window uses a Theme and that Window's Transparent flag is ON but the BG still isn't transparent: go to the Main node, Theme > Window > Styles, click on the resource, and uncheck Draw Center.

## How to Use

<b>In this project</b>
1. Navigate to main.gd and set the Theme in code

<b>In your own project</b>
1. Import the entire Themes folder into your project
2. Either in your Control node or Window node, navigate to Theme in the properties tab
3. Right-click on the empty Theme, choose Quick Load, then pick your Theme (it's a .tres file)
    OR
   Copy the Theme code from this main.gd to change the Theme of your node in code

## Links
[Classic95, Classic311, and Modern11](https://github.com/violinbg/godot-desktop-themes) by [violinbg](https://github.com/violinbg)<br>
[Windows95](https://github.com/mr-dreich/Godot-Windows-95-Theme/), [Windows98](https://github.com/mr-dreich/Godot-Window-98-Theme), [windows_10_dark, and windows_10_light](https://github.com/mr-dreich/Godot-Windows-10-Theme/) by [mr-dreich](https://github.com/mr-dreich)
