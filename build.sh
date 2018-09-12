
cd kernel/samsung/jf
git revert 0839a020cbf23313df050b9d1ccd16ae0a76cdf6
cd ../../..
. build/envsetup.sh
lunch lineage_jflte-userdebug
make -j10 otapackage