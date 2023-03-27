
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mkdir latest
mv cmdline-tools/* latest
mv latest cmdline-tools
export ANDROID_SDK_ROOT=$PWD
mkdir avds
