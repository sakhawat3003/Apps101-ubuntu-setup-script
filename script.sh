sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java7-set-default

if ! type "javac" &> /dev/null; then
  echo "Java didn't install properly";
  exit 0;
fi
if [ $(uname -m) == 'x86_64' ]; then 
  wget -P ~/AndroidApps101/ http://dl.google.com/android/adt/adt-bundle-linux-x86_64-20131030.zip;
else
  wget -P ~/AndroidApps101/ http://dl.google.com/android/adt/adt-bundle-linux-x86-20131030.zip;
fi

cd  ~/AndroidApps101/
unzip adt-bundle-linux*
mv adt-bundle*/ adt-plugin/
ln -s ~/AndroidApps101/adt-plugin/eclipse/eclipse ~/Desktop/eclipse2
