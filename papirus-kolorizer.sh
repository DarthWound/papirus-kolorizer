#!/bin/bash
# Change Papirus folders color

# For "back" color:
# 1- Go to https://www.w3schools.com/colors/colors_picker.asp
# 2- Enter the "front" color of your choice in the picker
# 3- Refer to the "lighter/darker" table and select around -15%
readonly FrontColor="8C8C8C"
readonly BackColor="737373"
readonly SymbolColor="333333" # "333333" -> dark ; "CCCCCC" -> light

### Some colors
## Material Design palette -> https://www.materialui.co/colors
## Fluent Design palette -> https://fluentcolors.com
## Arch blue = 1793D1
## Crunchbang dark = 2E3436
## Crunchbang light = BFBFBF
## Debian red = D70A53
## Fedora blue = 3C6EB4
## Gentoo purple = 54487A
## openSUSE lightgreen = 73BA25
## openSUSE darkgreen = 6DA741
## openSUSE lightcyan = 35B9AB
## openSUSE darkcyan = 00A489
## Pop OS brown = 574F4A
## Pop OS cyan = 48B9C7
## Pop OS yellow = FAA41A
## RedHat lightred = CC0000
## RedHat darkred = 820000
## RedHat lightblue = 03B9E4
## RedHat darkblue = 0678AB
## SteamOS green = 5C7E10
## SteamOS bluedark = 252C3F
## SteamOS bluelight = 6699FF
## SUSE green = 02D35F
## Ubuntu orange = E95420
## Ubuntu purple = 772953
## Ubuntu grey = AEA79F
## Ubuntu Budgie blue = 4D90D6
## Ubuntu Budgie red = A34F6D
## Ubuntu Budgie slate = 383C4A
## Ubuntu MATE green = 87A556
## Ubuntu MATE red = DD4814
## GNOME Adwaita beige = DBD1C7
## GNOME Adwaita blue = 3584E4
## KDE Plasma blue = 3DAEE9
## Windows select blue = 1C80E3
## Windows folder yellow = FFBF00
## MiamiVice bluegreen = 0BD3D3
## MiamiVice pink = F890E7
## Apple website blue = 0070C9
## Apple website green = 47B04B
## Apple website grey = 888888
## Apple website orange = E85D00
## Apple website red = CF102D
## Bondi Blue = 0095B6
## Bootstrap purple = 7952B3
## Bootstrap yellow = FFE484
## Bootstrap grey = 6C757D
## Bulma green = 00D1B2
## Lamborghini gold = DDB321
## Mozilla MDN blue = 3D7E9A
## Mozilla MDN grey = 9B9B9B
## Mozilla MDN red = E66465
## Mozilla MDN yellow = F6B73C
## Mozilla MDN green = 4D9F0C
## OnePlus red = EB0029
## VALVe brown = 745E4E
## VALVe green = D3D6CA
## VALVe orange = CF381E
## Pantone rose quartz = F7CAC9
## Pantone serenity = 92A8D1
## Sherwin taupe = 8C7E78
## Gunmetal = 2C3539
## Graphite = 577287
## Lounge Tango light = 4287D7
## Lounge Tango dark = 2962A3
## Lounge Salsa light = 92548C
## Lounge Salsa dark = 71416B
## Lounge Rumba light = 7969C9
## Lounge Rumba dark = 5445A1
## Lounge Jive light = 3EA894
## Lounge Jive dark = 297064
## https://www.materialui.co/flatuicolors

wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

sleep 2s

echo "Changing colors..."

sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/5294e2/$FrontColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/4877b1/$BackColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/1d344f/$SymbolColor/gI" {} \;

clear
printf "Kolorized! You can change your icon theme now.\nRestarting your session may be necessary.\n"
read -p "Press ENTER to close."
