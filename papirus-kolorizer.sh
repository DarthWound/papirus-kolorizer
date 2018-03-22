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
## Debian red = D70A53 (back:AA0841;symbol:410B1E)
## Fedora blue = 3C6EB4 (back:2D5286;symbol:1B2432)
## openSUSE lightgreen = 73BA25 (back:5B951D;symbol:273715)
## openSUSE darkgreen = 6DA741 (back:548132;symbol:25301D)
## openSUSE lightcyan = 35B9AB (back:288A81;symbol:193431)
## openSUSE darkcyan = 00A489 (back:00806A;symbol:031713)
## RedHat red = CC0000 (back:990000;symbol:2E0505)
## RedHat lightblue = A3DBE8 (back:70C8DB;symbol:4590A1)
## RedHat darkblue = 004153 (back:002833;symbol:031217)
## SUSE green = 02D35F (back:029745;symbol:062D18)
## Ubuntu orange = E95420 (back:BA3F12;symbol:522514)
## Ubuntu purple = 772953 (back:4C1A35;symbol:100A0D)
## Ubuntu MATE green = 87A556 (back:6D8646;symbol:34382E)
## Ubuntu MATE red = DD4814 (back:A3370F;symbol:3D1B0F)
## Budgie slate = 404552 (back:2D3039;symbol:0C0D0D)
## GNOME Adwaita folders = E3D1B6 (back:D5B990;symbol:9F8660)
## GNOME Adwaita blue = 4A90D9 (back:2870BD;symbol:233F5C)
## KDE Plasma blue = 3DAEE9 (back:199EE6;symbol:1F5A7A)
## Papirus black = 505050 (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus grey = 8D8D8D (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus brown = AE8D6E (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus green = 84B05F (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus teal = 009F85 (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus cyan = 00BAD2 (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Papirus blue = 4F92DE (https://github.com/PapirusDevelopmentTeam/papirus-folders)
## Miami80 blue = 46AECC (back:3198B4;symbol:294C56)
## Miami80 pink = CC468E (back:B43177;symbol:562941)
## Apple blue = 0070C9 (back:005499;symbol:051C2E)
## Bootstrap purple = 7952B3 (back:5E3E8E;symbol:31293D)
## Bulma green = 00D1B2 (back:009982;symbol:052E28)
## KNACSS green = 13747D (back:0D5259;symbol:061314)
## KNACSS red = CF361B (back:9E2915;symbol:3B1811)
## Lamborghini gold = DDB321 (back:B1911B;symbol:4F4317)
## Mozilla beige = D7D3C8 (back:BFB8A6;symbol:868279)
## OnePlus red = EB0029 (back:B3001E;symbol:450812)
## Pantone ultraviolet = 5F4B8B (back:443663;symbol:19171C)
## Pantone rose quartz = F7CAC9 (back:F2A8A6;symbol:D16361)
## Pantone serenity = 92A8D1 (back:6F8CC3;symbol:52607A)
## Sherwin taupe = 8C7E78 (back:6E635E;symbol:363230)
## Gunmetal = 2C3539 (back:161B1D;symbol:0C0D0D)
## DarthWound red = A63F3F (back:813131;symbol:301D1D)

wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

sleep 2s

echo "Changing colors..."

sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/5294e2/$FrontColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/4877b1/$BackColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/1d344f/$SymbolColor/gI" {} \;

clear
printf "Kolorized! You can change your icon theme now.\nRestarting your session may be necessary.\n"
read -p "Press ENTER to close."
