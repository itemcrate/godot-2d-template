# ![Item Crate Loves Godot](https://raw.githubusercontent.com/itemcrate/godot-boilerplate/master/assets/project-icon.png) Godot Boilerplate
*A boilerplate project for Godot 3.x, includes a nice baseline to kick-start a 2D project.*

![From Pittsburgh With Love](https://img.shields.io/badge/from%20pittsburgh%20with-%E2%9D%A4-yellow.svg?style=for-the-badge)

## Purpose
This project was originally intended to be a personal starter for working on Godot projects. During development it had occurred that others would be able to benefit from this as well. I intend for this to be a jumping off point and not a framework by providing just enough for anyone to use even if you just pull a bit of code from this into your own project.

## Features
* Organized directory structure & scripts with doc blocks.
* A pretty good gitignore
* Default `ui_left` `ui_right` `ui_up` `ui_down` inputs include WASD as optional arrows keys
* [Basic global game state & scene switcher](https://github.com/itemcrate/godot-boilerplate/blob/master/autoload/gameState.gd)
* [Global game data dictionary to track information](https://github.com/itemcrate/godot-boilerplate/blob/master/autoload/gameData.gd)
* [Bootstrap (Main Scene)](https://github.com/itemcrate/godot-boilerplate/blob/master/autoload/bootstrap/bootstrap.gd)
* A pretty crude placeholder [Title Scene](https://github.com/itemcrate/godot-boilerplate/tree/master/screens/title)

## Installation & Usage
#### Requirements
* [Godot 3.x](https://godotengine.org/download/)
* Prior knowledge of the Godot engine & GDScript.
* Git (optional)

#### Gettin Started
In your directory, run:

```sh
$ curl -fsSL https://github.com/itemcrate/godot-boilerplate/archive/master.tar.gz | tar -xz --strip-components=2 godot-boilerplate/2d-project
```

Alternatively, clone yourself a copy of the repo:

```sh
git clone --depth 1 https://github.com/itemcrate/godot-boilerplate.git boilerplate
```
Use a shallow clone to just get most recent code rather than all of the git history.
You can also [download a zip](https://github.com/itemcrate/godot-boilerplate/archive/master.zip) this repo and get the contents of the desired folder.

#### Project setup
A quick checklist once you start utilizing this project:
1. Import project into Godot.
2. Rename the project (Unless you happen to be making a game called `2D Project`.)
3. Change the project icon (I mean, you can totally use it too.)
4. Do work.

#### Don't keep Godot waiting
Afterwards, you're free to do whatever you need to do. Do not feel obligated to keep
any part or structure of the code - that's the point. It's just a starting point so you can rewrite
the entire thing if you want.

##### Useful links
* [Godot Website](https://godotengine.org)
* [Godot Source Code](https://github.com/godotengine/godot)
* [Godot Documentation](http://docs.godotengine.org)
* [Godot Community hub](https://godotengine.org/community)

## Author(s)
Michael Springer - [Twitter: @sprngr_](https://twitter.com/sprngr_) - [GitHub: sprngr](https://github.com/sprngr)

## Attribution
No attribution is required for the boilerplate code.

If you do get use out of this project to help start your own Godot game, feel free to let me know - I'd love to see what you have built!

## Licenses
Boilerplate Code (This Project):
[MIT](https://github.com/itemcrate/godot-boilerplate/LICENSE) - Michael Springer 2018
