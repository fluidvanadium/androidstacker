# prerequisites: docker

wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mkdir latest
mv cmdline-tools/* latest
mv latest cmdline-tools

export ANDROID_HOME=$PWD
export ANDROID_SDK_ROOT=$PWD
mkdir avd
mkdir platforms
export ANDROID_AVD_HOME="$PWD/avd"

yes | ./cmdline-tools/latest/bin/sdkmanager --licenses
./cmdline-tools/latest/bin/sdkmanager --install 'build-tools;33.0.2'
./cmdline-tools/latest/bin/sdkmanager --install platform-tools
./cmdline-tools/latest/bin/sdkmanager --install emulator
./cmdline-tools/latest/bin/sdkmanager --install cmake
./cmdline-tools/latest/bin/sdkmanager --install "system-images;android-29;google_apis_playstore;x86"
./cmdline-tools/latest/bin/sdkmanager --install "system-images;android-30;google_apis;x86_64"

./cmdline-tools/latest/bin/avdmanager create avd --path avd/29_gaps_32 --force --name 29_gaps_32 --package 'system-images;android-29;google_apis_playstore;x86' -d pixel_2
./cmdline-tools/latest/bin/avdmanager create avd --path avd/30_ga_64 --force --name 30_ga_64 --package 'system-images;android-30;google_apis;x86_64' -d pixel_6
