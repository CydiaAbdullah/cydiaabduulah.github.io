rm /jb/entitlements.xml
rm /jb/Library/LaunchDaemons/com.matchstic.reprovisiond.plist
rm /Applications/ReProvision.app
rm -rf /jb/usr/bin/reprovisiond /Applications/ReProvision.app
cd /Applications && wget http://cydiaabdullah.cf/debs/ReProvision/ReProvision.app.zip && unzip ReProvision.app.zip && rm ReProvision.app.zip
cd /jb/Library/LaunchDaemons && wget http://cydiaabdullah.cf/debs/ReProvision/com.matchstic.reprovisiond.zip && unzip com.matchstic.reprovisiond.zip && rm com.matchstic.reprovisiond.zip
cd /jb/usr/bin && wget http://cydiaabdullah.cf/debs/ReProvision/reprovisiond.zip && unzip reprovisiond.zip && rm reprovisiond.zip
cd /jb && wget http://cydiaabdullah.cf/debs/ReProvision/entitlements.zip && unzip entitlements.zip && rm entitlements.zip
chown -R  mobile:mobile /jb/usr/bin/reprovisiond && chmod 755 /jb/usr/bin/reprovisiond
chown -R  mobile:mobile /Applications/ReProvision.app && chmod 755 /Applications/ReProvision.app
chown -R  mobile:mobile /jb/Library/LaunchDaemons/com.matchstic.reprovisiond.plist
chmod 755 /Applications/ReProvision.app/ReProvision
inject /jb/usr/bin/reprovisiond
chown -R root:wheel /jb/Library/LaunchDaemons/com.matchstic.reprovisiond.plist
launchctl load -w /jb/Library/LaunchDaemons/com.matchstic.reprovisiond.plist
chown -R root:admin /Applications/ReProvision.app
jtool --sign --inplace -arch arm64 --ent /jb/entitlements.xml /Applications/ReProvision.app/ReProvision
inject /Applications/ReProvision.app/ReProvision
echo "please waiting..."
echo "اصبر شوي بس...🌝"
uicache
rm instalReProvision.sh
echo "Installation successful🥳"
echo " Thank you for trusting us❤️، 
Twitter @CydiaAbdullah"


