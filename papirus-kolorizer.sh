#!/bin/bash
# Change Papirus folders color

# 1- Go to https://www.w3schools.com/colors/colors_picker.asp
# 2- Enter the color of your choice in the picker
# 3- Refer to the "lightness" and "saturation" tables
# 4- For "front" use the color you chose, for "back" select "front" -10% lightness
# 5- For "symbol" select "front" -30% lightness, then apply "symbol" -20% saturation
readonly FrontColor="7952B3"
readonly BackColor="5E3E8E"
readonly SymbolColor="31293D"

### Some colors
## Material Design palette -> https://material.io/guidelines/style/color.html#color-color-palette
## Debian red = D70A53
## Fedora blue = 3C6EB4
## openSUSE lightgreen = 73BA25
## openSUSE darkgreen = 6DA741
## openSUSE lightcyan = 35B9AB
## openSUSE darkcyan = 00A489
## RedHat red = CC0000
## RedHat lightblue = A3DBE8
## RedHat darkblue = 004153
## SUSE green = 02D35F
## Ubuntu orange = E95420
## Ubuntu purple = 772953
## Ubuntu MATE green = 87A556
## Ubuntu MATE red = DD4814
## Budgie slate = 404552
## GNOME Adwaita folders = E3D1B6
## GNOME Adwaita blue = 4A90D9
## KDE Plasma blue = 3DAEE9
## Papirus black = 505050
## Papirus grey = 8D8D8D
## Papirus brown = AE8D6E
## Papirus green = 84B05F
## Papirus teal = 009F85
## Papirus cyan = 00BAD2
## Papirus blue = 4F92DE
## Miami80 blue = 46AECC
## Miami80 pink = CC468E
## Apple blue = 0070C9
## Bootstrap purple = 7952B3
## Bulma green = 00D1B2
## KNACSS green = 13747D
## KNACSS red = CF361B
## Lamborghini gold = DDB321
## Mozilla beige = D7D3C8
## OnePlus red = EB0029
## Pantone ultraviolet = 5F4B8B
## Pantone rose quartz = F7CAC9
## Pantone serenity = 92A8D1
## Sherwin taupe = 8C7E78
## Gunmetal = 2C3539
## DarthWound red = A63F3F

wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

sleep 2s

echo "Changing colors..."

sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/5294e2/$FrontColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/4877b1/$BackColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/1d344f/$SymbolColor/gI" {} \;

clear
printf "Kolorized! You can change your icon theme now.\nRestarting your session may be necessary.\n"
read -p "Press ENTER to close."
