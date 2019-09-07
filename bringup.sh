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

#for caf hardware
# for media: add breaks to switching
# for display: both byte references are correct but we need to clear it out-> 
# change name of the typedef in the .h , to a custom one. also change the declaration of m_XXXXX
