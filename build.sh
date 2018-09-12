
rm -rf kernel/samsung/jf
rm -rf external/tinycompress

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

. build/envsetup.sh
make clean
lunch lineage_jflte-userdebug
make -j10 otapackage