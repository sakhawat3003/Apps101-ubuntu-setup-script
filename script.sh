sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default


if ! type "javac" &> /dev/null; then
  echo "Java didn't install properly";
  exit 0;
fi
if [ $(uname -m) == 'x86_64' ]; then 
  sudo apt-get install ia32-libs;
  wget -P ~/AndroidApps101/ http://dl.google.com/android/adt/adt-bundle-linux-x86_64-20131030.zip;
else
  sudo apt-get install libgl1-mesa-dev;
  wget -P ~/AndroidApps101/ http://dl.google.com/android/adt/adt-bundle-linux-x86-20131030.zip;
fi
