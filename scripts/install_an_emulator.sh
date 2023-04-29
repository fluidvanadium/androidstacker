#deprecated

./cmdline-tools/latest/bin/sdkmanager --install "system-images;android-30;google_apis;x86_64"
./cmdline-tools/latest/bin/sdkmanager --install "system-images;android-30;google_apis;x86"

./cmdline-tools/latest/bin/avdmanager create avd --path avd/30_ga_64 --force --name 30_ga_64 --package 'system-images;android-30;google_apis;x86_64' -d pixel_6
./cmdline-tools/latest/bin/avdmanager create avd --path avd/30_ga_32 --force --name 30_ga_32 --package 'system-images;android-30;google_apis;x86' -d pixel_2

