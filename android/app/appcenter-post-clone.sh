#!/usr/bin/env bash
#Place this script in project/android/app/
cd ..
# fail if any command fails
set -e
# debug log
set -x
cd ..
git clone -b master https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH
flutter channel stable
#git checkout v1.9.1+hotfix.2 #Checks out the version of flutter i am using in my machine
flutter doctor
echo "Installed flutter to `pwd`/flutter"


#--------------Build commands ---------------------------------------------------
#----------------UNCOMMENT ANY MFB YOU WANT TO BUILD ----------------------------#
#flutter build apk --release

flutter build apk --flavor flavor1 -t lib/adeyemi_main.dart
#flutter build apk --flavor albarakahmfb -t lib/albarakah_main.dart
#flutter build apk --flavor assetsmfb -t lib/assets_main.dart
#flutter build apk --flavor bainescreditmfb -t lib/bainescredit_main.dart
#flutter build apk --flavor cemcsmfb -t lib/cemcs_main.dart
#flutter build apk --flavor citmfb -t lib/cit_main.dart
#flutter build apk --flavor fastmfb -t lib/fast_main.dart
#flutter build apk --flavor firmusmfb -t lib/firmus_main.dart
#flutter build apk --flavor gashuamfb -t lib/gashua_main.dart
#flutter build apk --flavor kcmbmfb -t lib/kcmb_main.dart    ------------
#flutter build apk --flavor mainstreetmfb -t lib/mainstreet_main.dart
#flutter build apk --flavor purplemoneymfb -t lib/purple_money_main.dart ------------
#flutter build apk --flavor refugemortgagemfb -t lib/refugemorgage_main.dart
#flutter build apk --flavor rfsmfb -t lib/rfs_main.dart
#flutter build apk --flavor royalexchangemfb -t lib/royal_exchange_main.dart
#flutter build apk --flavor stellasmfb -t lib/stellas_main.dart
#flutter build apk --flavor udamfb -t lib/uda_main.dart
#flutter build apk --flavor xslncemfb -t lib/xslnce_main.dart


#-------------------------------------------------------------------------------
#copy the APK where AppCenter will find it
mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_