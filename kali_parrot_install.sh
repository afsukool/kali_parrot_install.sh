#!/bin/bash
# System Updates
sudo apt-get update -y
sudo apt-get full-upgrade --fix-missing -y
sudo apt-get autoremove -y
#sudo parrot-upgrade

# Alias to Fix Virtual Box issues
# alias FixVM="killall /usr/bin/VBoxClient 2> /dev/null; /usr/bin/VBoxClient --clipboard && /usr/bin/VBoxClient --seamless && /usr/bin/VBoxClient --vmsvga && /usr/bin/VBoxClient --draganddrop && /usr/bin/VBoxClient --checkhostversion"

mkdir Tools
cd Tools

# Windows Enum
mkdir WindowsEnum && cd WindowsEnum
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1
wget https://raw.githubusercontent.com/dafthack/HostRecon/master/HostRecon.ps1
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1
wget https://raw.githubusercontent.com/itm4n/PrivescCheck/master/PrivescCheck.ps1
wget https://raw.githubusercontent.com/NetSPI/PowerUpSQL/master/PowerUpSQL.ps1
wget https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1
wget https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Kerberoast.ps1

wget https://github.com/BloodHoundAD/SharpHound/releases/download/v1.1.0/SharpHound-v1.1.0.zip
mkdir SharpHound && cd SharpHound && unzip ../SharpHound-v1.1.0.zip && rm ../SharpHound-v1.1.0.zip && cd ..
wget https://github.com/carlospolop/PEASS-ng/releases/download/20230101/winPEASx64.exe
wget https://github.com/AlessandroZ/LaZagne/releases/download/2.4.3/lazagne.exe
wget https://eternallybored.org/misc/netcat/netcat-win32-1.11.zip
mkdir nc && cd nc && unzip ../netcat-win32-1.11.zip && rm ../netcat-win32-1.11.zip && cd ..

# Rock you
gunzip -d /usr/share/wordlists/rockyou.txt.gz && rm /usr/share/wordlists/rockyou.txt.gz

# Seclists
git clone https://github.com/danielmiessler/SecLists.git

# Sliver
curl https://sliver.sh/install | sudo bash

# Go
sudo apt install golang-go -y
go install github.com/OJ/gobuster/v3@latest
go install github.com/ffuf/ffuf@latest
go install github.com/Emoe/kxss@latest
go install github.com/tomnomnom/meg@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/gf@latest
go install github.com/tomnomnom/gron@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/unfurl@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/tomnomnom/anew@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/sensepost/gowitness@latest
go install github.com/hakluke/hakrevdns@latest

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
go install -v github.com/jaeles-project/gospider@latest
go install -v github.com/jaeles-project/jaeles@latest

echo "export PATH=$PATH:/home/$USER/go/bin" >> /home/$USER/.bashrc
echo "export PATH=$PATH:/home/$USER/go/bin" >> /home/$USER/.zshrc

# Binary database updates
wpscan --update
sudo sqlmap --update
nuclei --update

#Ruby
sudo gem install evil-winrm

# Apt
sudo apt-get install amass -y
#sudo apt-get install virtualbox-guest-utils -y
sudo apt-get -y install adb
sudo apt-get -y install google-android-platform-tools-installer
sudo apt-get -y install exploitdb
sudo apt-get -y install ripgrep
sudo apt-get -y install proxychains4
sudo apt-get -y install smbclient
sudo apt-get -y install ftp
sudo apt-get -y install mariadb-client mariadb-server
sudo apt-get -y install cmake
sudo apt-get -y install software-properties-common
sudo apt-get -y install silversearcher-ag
sudo apt-get -y install ghidra
sudo apt-get -y install npm
sudo apt-get -y install wireguard-tools
sudo apt-get -y install prips

#Pip
pip3 install search-that-hash
sudo apt-get install python3-venv
python3 -m pip install pipx
python3 -m pipx ensurepath
python3 -m pipx install crackmapexec

# Github
mkdir Github
cd Github
# JWT Tool
git clone https://github.com/ticarpi/jwt_tool.git
# Sharp Tools
git clone https://github.com/Flangvik/SharpCollection.git
# Asn lookup
git clone https://github.com/yassineaboukir/Asnlookup && cd Asnlookup && pip3 install -r requirements.txt && cd ..
# Responder 
git clone https://github.com/lgandx/Responder.git
# XSS Strike
git clone https://github.com/s0md3v/XSStrike.git && cd XSStrike && pip3 install -r requirements.txt && cd ..
# Smuggler
git clone https://github.com/defparam/smuggler.git
# Malicious PDF Generator
git clone https://github.com/jonaslejon/malicious-pdf.git
# Fuxsploiter
git clone https://github.com/almandin/fuxploider.git && cd fuxploider && pip3 install -r requirements.txt && cd ..
# TestSSL
git clone --depth 1 https://github.com/drwetter/testssl.sh.git 
# FireProx
git clone https://github.com/ustayready/fireprox && cd fireprox && pip3 install -r requirements.txt && cd ..
# o365spray
git clone https://github.com/0xZDH/o365spray.git && cd o365spray && pip3 install -r requirements.txt && python3 ./setup.py install && cd ..

# AWS
mkdir AWS
cd AWS
git clone https://github.com/nahamsec/lazys3.git
git clone https://github.com/0xSearches/sandcastle.git
git clone https://github.com/sa7mon/S3Scanner.git && cd S3Scanner && pip3 install -r requirements.txt && cd ..
cd ..

# Linux priv esc
mkdir Linux-Priv-Esc
git clone https://github.com/Anon-Exploiter/SUID3NUM.git
git clone https://github.com/mzet-/linux-exploit-suggester.git
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32
git clone https://github.com/carlospolop/PEASS-ng.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/sleventyeleven/linuxprivchecker.git && cd linuxprivchecker && pip3 install -r requirements.txt && cd ..
git clone https://github.com/spencerdodd/kernelpop.git
cd ..

# Ysoserial
wget https://github.com/frohoff/ysoserial/releases/latest/download/ysoserial-all.jar
wget https://github.com/pwntester/ysoserial.net/releases/download/v1.35/ysoserial-1.35.zip && unzip ysoserial-1.35.zip && rm ysoserial-1.35.zip && mv ./Release Yso-Serial-dotnet 

# Firefox Extensions
nohup firefox &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/cookie-quick-manager/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/dotgit/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/open-multiple-urls/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/s3-bucket-list/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/link-gopher/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/security-txt/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/single-file/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/crxviewer/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/wayback-machine_new/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/trufflehog/" &
firefox -new-tab "https://addons.mozilla.org/en-US/firefox/addon/pwas-for-firefox/" &


# Update all git repos
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull origin master" \;
# Update all go packages
#go get -u all

sudo chown -R jack .
echo "" > ~/.bash_history
#echo "" > ~/.zsh_history
