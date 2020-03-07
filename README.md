![title](papirusK-title.gif)

---
---
---

:information_source: **Need matching themes and wallpapers?
Check [materia-kolorizer](https://github.com/DarthWound/materia-kolorizer) and [wallpaper-kolorizer](https://github.com/DarthWound/wallpaper-kolorizer)!**

--- You can use "[all-in-one kolorizer](https://gist.github.com/DarthWound/01697d659b9f17dd4159b68b13745dfa)" script to get everything.

---
---
---

This bash script provides an easy way to change [Papirus icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) folders color.

![showcase](kolorizerSW.gif)

-> [fullsize screenshot 1](kolorizerSC.png?raw=true) *(bootstrap purple + wp-foxy)*

-> [fullsize screenshot 2](kolorizerSK.png?raw=true) *(bulma green + wp-angly)*

-> [fullsize screenshot 3](kolorizerSG.png?raw=true) *(graphite + wp-aqueousy)*

## Installation

```
cd $(xdg-user-dir DOWNLOAD)
wget https://raw.githubusercontent.com/DarthWound/papirus-kolorizer/master/papirus-kolorizer.sh
chmod +x papirus-kolorizer.sh
```

You don't have to download Papirus, the script does everything for you.

If you already have this script installed, remove the old version first.

## Usage

Modify the script to set your own colors.

Then launch it:

```
cd $(xdg-user-dir DOWNLOAD) && ./papirus-kolorizer.sh
```

*It will replace your existing Papirus installation if any.*

*PS: the way I change colors in Papirus is a bit dirty and hacky, but it works well and it's simple ^^*
