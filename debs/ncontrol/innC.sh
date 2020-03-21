rm /Applications/nControliOS.app
rm -rf /jb/usr/bin/controllersupportd /Applications/nControliOS.app
cd /jb/Library/LaunchDaemons && rm com.nito.controllersupport.plist

cd /Applications && wget http://cydiaabdullah.cf/debs/ncontrol/App.zip && unzip App.zip && rm App.zip
cd /jb/Library/LaunchDaemons && wget http://cydiaabdullah.cf/debs/ncontrol/pilst.zip && unzip pilst.zip && rm pilst.zip
cd /jb/usr/bin && wget http://cydiaabdullah.cf/debs/ncontrol/sup.zip && unzip sup.zip && rm sup.zip

chown root:wheel /jb/Library/LaunchDaemons/com.nito.controllersupport.plist
chown root:wheel /jb/usr/bin/controllersupportd
launchctl unload /jb/Library/LaunchDaemons/com.nito.controllersupport.plist
launchctl load /jb/Library/LaunchDaemons/com.nito.controllersupport.plist

chown -R  mobile:mobile /jb/usr/bin/controllersupportd && chmod 755 /jb/usr/bin/controllersupportd
chown -R  mobile:mobile /Applications/nControliOS.app && chmod 755 /Applications/nControliOS.app
chown -R  mobile:mobile /jb/Library/LaunchDaemons/com.nito.controllersupportd.plist
chmod 755 /Applications/nControliOS.app/nControliOS
inject /jb/usr/bin/controllersupportd
chown -R root:wheel /jb/Library/LaunchDaemons/com.nito.controllersupportd.plist
launchctl load -w /jb/Library/LaunchDaemons/com.nito.controllersupportd.plist
chown -R root:admin /Applications/nControliOS.app
inject /Applications/nControliOS.app/nControliOS
echo "please waiting..."
echo "اصبر شوي بس...🌝"
uicache
rm innC.sh
echo "Installation successful🥳"
echo " Thank you for trusting us❤️، 
Twitter @CydiaAbdullah"

