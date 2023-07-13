#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/dreamsat/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################
#!/bin/sh
echo

opkg install --force-overwrite  https://github.com/tarekzoka/dreamsat/blob/main/enigma2-plugin-extensions-dreamsatpanel_1.5_all.ipk?raw=true
wait
#!/bin/sh
#

wget -O /tmp/dreamsatpanel_1.5.deb "https://github.com/tarekzoka/dreamsat/blob/main/enigma2-plugin-extensions-dreamsatpanel_1.5.deb?raw=true"
wait
apt-get update ; dpkg -i /tmp/dreamsatpanel_1.5.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   TAREK_TT "   
sleep 4;
		echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 00
tt
