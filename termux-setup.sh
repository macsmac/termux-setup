# Prepairing
mkdir tmp
cd tmp

# Install common packages
clear
echo -e "Installing packages..."
pkg install -y nano git coreutils wget tar less

# Install sudo
clear
echo -e "Installing sudo..."
pkg install -y ncurses-utils
wget "https://raw.githubusercontent.com/st42/termux-sudo/master/sudo"
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo

# Setup custom commands in bash_profile
clear
cat >~/.bash_profile <<EOL
alias wifi_passwords='sudo cat /data/misc/wifi/wpa_supplicant_hisi.conf'

echo -e "== Commands =="
echo -e "wifi_passwords - View wpa_supplicant"
EOL

# Cleanup
clear
echo -e "Cleaning up..."
cd ..
rm -r ./tmp
