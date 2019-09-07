cd build/soong 
git fetch "https://github.com/LineageOS/android_build_soong" refs/changes/30/255730/7 && git checkout FETCH_HEAD
cd ../..

cd vendor/lineage
git fetch "https://github.com/LineageOS/android_vendor_lineage" refs/changes/88/255888/3 && git checkout FETCH_HEAD
cd ../..

cd build/make
git fetch "https://github.com/LineageOS/android_build" refs/changes/61/255761/8 && git checkout FETCH_HEAD
cd ../..


#vendor/lineage/build/tools/repopick.py -t ten-build-bringup

# for soong (path disallow shit) : return Allowed to  func GetConfig(name string) PathConfig {
# ui/build/paths/config.go