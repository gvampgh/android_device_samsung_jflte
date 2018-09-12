cd device/samsung/jf-common
git branch -D opt-cm-16.0
git checkout -b opt-cm-16.0
cd ../../..

rm -rf kernel/samsung/jf
rm -rf external/tinycompress
rm -rf hardware/qcom/gps
rm -rf hardware/libhardware
rm -rf external/perfetto

#Fix display's fetch
repo sync kernel/samsung/jf
cd kernel/samsung/jf
git revert 0839a020cbf23313df050b9d1ccd16ae0a76cdf6
cd ../../..

#Fix tinycompress vendor exportation
repo sync external/tinycompress
cd external/tinycompress
git fetch https://github.com/LineageOS/android_external_tinycompress refs/changes/62/225762/1 && git cherry-pick FETCH_HEAD
cd ../..

#Fix gps
repo sync hardware/qcom/gps
cd hardware/qcom/gps
git fetch https://github.com/LineageOS/android_hardware_qcom_gps refs/changes/47/223347/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_qcom_gps refs/changes/48/223348/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_qcom_gps refs/changes/49/223349/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_qcom_gps refs/changes/50/223350/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_qcom_gps refs/changes/97/223397/2 && git cherry-pick FETCH_HEAD
cd ../../..

#fix libhardware
repo sync hardware/libhardware
cd hardware/libhardware
git fetch https://github.com/LineageOS/android_hardware_libhardware refs/changes/97/223097/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_libhardware refs/changes/81/223681/1 && git cherry-pick FETCH_HEAD
cd ../..

#fix perfetto
repo sync external/perfetto
cd external/perfetto
git fetch https://github.com/LineageOS/android_external_perfetto refs/changes/13/223413/1 && git cherry-pick FETCH_HEAD
cd ../..

. build/envsetup.sh
make clean
lunch lineage_jflte-userdebug
make -j10 otapackage