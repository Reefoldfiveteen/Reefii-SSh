#!/bin/bash
#Auto Script by Reefii.ID
#Facebook : Aji Klenggotan

#if [[ $USER != 'root' ]]; then
#	echo "Kamu harus login dengan akun 'root' !"
#	exit
#fi

#MYIP=$(wget -qO- ipv4.icanhazip.com)

#Choose vps name & Source
#vps="reefii";
#vps="refiissh";

#source : source = IP Reg, source1=installer parent url
#if [[ $vps = "reefii" ]]; then
#	source="https://reefii.000webhostapp.com/reg"
#	source1="https://reefii.000webhostapp.com/rssh/stretch"
#else
#	source="https://reefii.000webhostapp.com/reg"
#	source1"https://reefii.000webhostapp.com/rssh/stretch"
#fi

# go to root
cd

# check registered ip
#wget -q -O /usr/lib/mercury $source/parcel06
#if ! grep -w -q $MYIP /usr/lib/mercury; then
#	echo "Maaf, Hanya IP terdaftar yang dapat menggunakan Script ini, harap kontak Author untuk informasi lebih lanjut."
#	if [[ $vps = "reefii" ]]; then
#		echo "Kontak  Author :"
#		echo "Facebook       : Aji Klenggotan"
#	else
#		echo "Kontak  Author :"
#		echo "Facebook       : Aji Klenggotan"
#	fi
#	rm -f /usr/lib/mercury
#	exit
#fi






#install
apt-get update
#install2
apt-get install xrdp
echo "ok"

cd
#install3
apt-get install xfce4
echo "ok"

cd
#makesession
echo xfce4-session >~/.xsession
# Change File

echo -n "TOLONG LAKUKAN PERINTAH DIBAWAH INI UNTUK MEMBERI AKSES TAMPILAN RDP. JIKA TIDAK, RDP ANDA HANYA AKAN TERLIHAT SEPERTI CONSOLE"
echo -n "[PENTING] Tolong ubah'. /etc/X11/Xsession' di baris terbawah menjadi 'startxfce4' kemudian tekan Ctrl+x >y >[Enter] -Reefoldfiveteen.ID- (y/y)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
		   cd
		   echo -n "Proses sedang berjalan ......"; echo " Done."; 
		   nano /etc/xrdp/startwm.sh
           cd
else
		   cd
		   echo -n "Proses sedang berjalan ......"; echo " Done."; 
		   nano /etc/xrdp/startwm.sh
           cd
fi

#information
echo "Your Login IP : $MYIP"
echo "Username      : Username VPS Anda (root)"
echo "Password      : Password VPS Anda"
#restartingsystem
sudo service xrdp restart
cd
echo -e "\e[1;33;44mReefoldfiveteen.ID\e[0m"
echo -e "\e[1;33;44mEmail:myynamearif@gmail.com\e[0m"
cd
