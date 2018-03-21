![title](papirusK-title.gif)

---

**Need matching themes and wallpapers?
Check [materia-kolorizer](https://github.com/DarthWound/materia-kolorizer) and [wallpaper-kolorizer](https://github.com/DarthWound/wallpaper-kolorizer)!**

---

This bash script provides an easy way to change [Papirus icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) folders color.

![showcase](kolorizerSW.gif)

-> [fullsize screenshot](kolorizerSC.png?raw=true) <-

## Installation

You don't have to download Papirus, this script does everything for you.

`cd $(xdg-user-dir DOWNLOAD)`

`wget https://raw.githubusercontent.com/DarthWound/papirus-kolorizer/master/papirus-kolorizer.sh`

If script isn't executable, change permissions:

`chmod +x papirus-kolorizer.sh`

## Usage

Launch the script:

`cd $(xdg-user-dir DOWNLOAD) && ./papirus-kolorizer.sh`

*It will replace your existing Papirus installation.*

Default color is "Bootstrap purple" #7952B3 and shades. To change colors, open the script in a text editor and modify the HEX color codes in variables *(lines beginning with "readonly" at the top of the script)*. Some color codes are commented in the script to help you quickly find something you may like.

*PS: the way I change colors in Papirus is a bit dirty and hacky, but it works well and it's simple ^^*
