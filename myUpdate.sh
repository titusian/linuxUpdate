# 1/1/16; berlin
# 1/6/17; adding reboot at the end; berlin
# 12/17/17; adding the "-y" to the end of the apt calls to auto answer

echo "Starting the update."
# add in logging
date >> logFile.txt

apt-get update
clear
echo "Update complete, starting the upgrade."

apt-get upgrade -y
clear
echo "Upgrade complete, starting Dist Upgrade."

apt-get dist-upgrade -y
clear
echo "All done! with Part 1.  Now on to your Aptitude!"

aptitude update -y
clear
echo "Aptitude update complete!"

aptitude full-upgrade -y
clear
date >> logFile.txt
echo "Now, we're all done!"

tail logFile.txt

sleep 1
echo "...The"

echo "......System"
sleep 1

echo ".........Is"
sleep 1

echo "............Down!"
sleep 1

reboot

