<div align="center">
    <h1 align="center">Godot Boilerplate</h1>
    <p align="center">
        <strong>A boilerplate project for Godot 3.x, includes a nice baseline to kick-start a 2D project.</strong>
    </p>
    <br/>
    <p align="center">
        <img src="https://raw.githubusercontent.com/itemcrate/godot-boilerplate/master/assets/project-icon.png" alt="Item Crate <3 Godot"/>
    </p>
    <p align="center">
        <img src="https://img.shields.io/badge/from%20pittsburgh%20with-%E2%9D%A4-yellow.svg?style=for-the-badge" alt="From Pittsburgh With Love"/>
    </p>
</div>

## Purpose
This project was originally intended to be a personal starter for working on Godot projects. During development it had occurred that others would be able to benefit from this as well. I intend for this to be a jumping off point and not a framework by providing just enough for anyone to use even if you just pull a bit of code from this into your own project.

## Features
* Organized directory structure & scripts with doc blocks
* Default `ui_left` `ui_right` `ui_up` `ui_down` inputs include WASD as optional arrows
* Basic global game state & scene switcher
* Global game data dictionary to track information
* Bootstrap (Main Scene) scene with stubbed out resource loading thread.
* Loading scene that doesn't look half bad. (Uses League Mono - Regular)
![Loading Screen gif](https://i.gyazo.com/de6f097cad7180a2c6cc24560cb02356.gif)

#### TODO
* Basic game data save/load
* Audio setup

## Installation & Usage
#### Requirements
* [Godot 3.x](https://godotengine.org/download/)
* Prior knowledge of the Godot engine & GDScript
* Git (optional)

#### Cloning
To get started, clone yourself a copy of the repo:

```sh
git clone --depth 1 https://github.com/itemcrate/godot-boilerplate.git boilerplate
```
Use a shallow clone to just get most recent code rather than all of the git history.
You can also use the `Download Zip` option as well.

#### Project setup
A quick checklist once you start utilizing this project:
1. Import project into Godot.
2. Rename the project (Unless you happen to be making a game called `Godot Boilerplate`.)
3. Change the project icon (I mean, you can totally use it too.)
4. Decide if you want to keep the resource loading setup.
    * (Optional) Customize the loading screen if you keep it.
5. Do work.

#### Don't keep Godot waiting
Afterwards, you're free to do whatever you need to do. Do not feel obligated to keep
any part of the code - that's the point. It's just a starting point so you can rewrite
the entire thing if you want.

##### Useful links
* [Godot Website](https://godotengine.org)
* [Godot Source Code](https://github.com/godotengine/godot)
* [Godot Documentation](http://docs.godotengine.org)
* [Godot Community hub](https://godotengine.org/community)

## Author(s)
Michael Springer - [Twitter: @sprngr_](https://twitter.com/sprngr_) - [GitHub: sprngr](https://github.com/sprngr)

## Attribution
No attribution is needed for the boilerplate itself, please be sure to attribute the packaged font
if you do use it. If you do get use out of this project to help start your own Godot game, feel free
to let me know - I'd love to see what you have built!

## Licenses
Boilerplate Code (This Project):
[MIT](https://github.com/itemcrate/godot-boilerplate/LICENSE) - Michael Springer 2018

[LeagueMono](https://github.com/theleagueof/league-mono):
[OFL](https://github.com/theleagueof/league-mono/blob/master/ofl.markdown) - Tyler Finck 2017
