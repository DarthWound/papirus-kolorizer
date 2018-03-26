#!/bin/bash
# Change Papirus folders color

# For "back" color:
# 1- Go to https://www.w3schools.com/colors/colors_picker.asp
# 2- Enter the "front" color of your choice in the picker
# 3- Refer to the "lighter/darker" table and select around -15%
readonly FrontColor="7952B3"
readonly BackColor="52367C"
readonly SymbolColor="303030"

### Some colors
## Material Design palette -> https://material.io/guidelines/style/color.html#color-color-palette
## Fluent Design palette -> https://docs.microsoft.com/en-us/windows/uwp/design/style/color#accent-color
## Arch blue = 1793D1 (back:0F618A)
## Crunchbang dark = 2E3436 (back:0C0D0E)
## Crunchbang light = BFBFBF (back:999999)
## Debian red = D70A53 (back:920738)
## Fedora blue = 3C6EB4 (back:264673)
## Gentoo purple = 54487A (back:372F50)
## openSUSE lightgreen = 73BA25 (back:4E8019)
## openSUSE darkgreen = 6DA741 (back:486E2B)
## openSUSE lightcyan = 35B9AB (back:22776E)
## openSUSE darkcyan = 00A489 (back:004D40)
## Pop OS brown = 574F4A (back:292623)
## Pop OS cyan = 48B9C7 (back:308F9C)
## Pop OS yellow = FAA41A (back:C87D04)
## RedHat mediumred = A30000 (back:4D0000)
## RedHat lightblue = A3DBE8 (back:5CC0D6)
## RedHat darkblue = 004153 (back:00141A)
## SteamOS green = 5C7E10 (back:314409)
## SteamOS bluedark = 252C3F (back:090B10)
## SteamOS bluelight = 6699FF (back:1A66FF)
## SUSE green = 02D35F (back:017E3A)
## Ubuntu orange = E95420 (back:A23710)
## Ubuntu purple = 772953 (back:391427)
## Ubuntu Budgie blue = 4D90D6 (back:2A70BB)
## Ubuntu Budgie red = A34F6D (back:783A50)
## Ubuntu Budgie slate = 383C4A (back:16171D)
## Ubuntu MATE green = 87A556 (back:60753E)
## Ubuntu MATE red = DD4814 (back:8C2F0D)
## GNOME Adwaita beige = E3D1B6 (back:CEAE7E)
## GNOME Adwaita blue = 4A90D9 (back:2464A8)
## KDE Plasma blue = 3DAEE9 (back:178ECF)
## Windows select blue = CDE4FC (back:87BDF8)
## Windows folder yellow = FFE79B (back:FFD54D)
## MiamiVice bluegreen = 0BD3D3 (back:089191)
## MiamiVice pink = F890E7 (back:F33FD5)
## Apple website bluedark = 0070C9 (back:004680)
## Apple website bluelight = 66BBFF (back:1A98FF)
## Apple website greydark = 555555 (back:333333)
## Apple website greylight = 888888 (back:666666)
## Apple website red = CF102D (back:8E0B1E)
## Bootstrap purple = 7952B3 (back:52367C)
## Bootstrap yellow = FFE484 (back:FFD333)
## Bootstrap grey = 6C757D (back:474D52)
## Bulma green = 00D1B2 (back:00806C)
## Lamborghini gold = DDB321 (back:9B7F17)
## Mozilla MDN blue = 3F87A6 (back:2A5A6F)
## Mozilla MDN grey = 9B9B9B (back:737373)
## Mozilla MDN red = E66465 (back:DB2424)
## Mozilla MDN yellow = F6B73C (back:DB960A)
## OnePlus red = EB0029 (back:99001A)
## VALVe brown = 745E4E (back:4D3E33)
## VALVe green = D3D6CA (back:ACB19A)
## VALVe orange = CF381E (back:862413)
## Pantone rose quartz = F7CAC9 (back:EE9290)
## Pantone serenity = 92A8D1 (back:5D7EBB)
## Sherwin taupe = 8C7E78 (back:605652)
## Gunmetal = 2C3539 (back:0B0D0E)
## DarthWound red = A63F3F (back:6F2A2A)
## Papirus Folders -> https://github.com/PapirusDevelopmentTeam/papirus-folders

wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

sleep 2s

echo "Changing colors..."

sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/5294e2/$FrontColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/4877b1/$BackColor/gI" {} \;
sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/1d344f/$SymbolColor/gI" {} \;

clear
printf "Kolorized! You can change your icon theme now.\nRestarting your session may be necessary.\n"
read -p "Press ENTER to close."
