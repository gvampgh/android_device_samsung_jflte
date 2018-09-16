cd device/samsung/jf-common
git branch -D opt-cm-16.0
git checkout -b opt-cm-16.0
cd ../../..

. build/envsetup.sh


#repo picks
# bionic
repopick 223067; # libc fortify: Ignore open() O_TMPFILE mode bits warning
repopick 223943; # bionic: meh

# bootable/recovery
repopick 225588; # recovery: updater: Fix SymlinkFn args

# build/make
repopick 222733; # core: Disable vendor restrictions
repopick 222760; # Add LOCAL_AIDL_FLAGS

# build/soong
repopick 224613; # soong: Add LOCAL_AIDL_FLAGS handling

# dalvik
repopick 225475; # dexdeps: Add option for --include-lineage-classes.
repopick 225476; # dexdeps: Ignore static initializers on analysis.

# external/perfetto
repopick 223413; # perfetto_cmd: Resolve missing O_CREAT mode

# external/tinycompress
repopick 225762; # tinycompress: enable libtinycompress_vendor
repopick 225763; # tinycompress: Use sanitized headers generated from kernel source
repopick 223008; # tinycompress: tinycompress fixes
repopick 223011; # tinycompress: Fix compilation on old targets

# frameworks/av
repopick 225530; # camera: Workaround for GCC-compiled HAL3 drivers
repopick 225531; # soundtrigger: fill in default extras from dsp
repopick 225532; # Camera: CameraHardwareInterface changes to support Extended FD
repopick 225533; # camera: Only link and use vendor.qti.hardware.camera.device if specified
repopick 225534; # libstagefright: encoder must exist when source starting
repopick 225535; # Camera: Add extensions to CameraClient
repopick 225536; # Camera: Add support for preview frame fd
repopick 225537; # libstagefright: Add more sample rates for FLAC
repopick 225539; # Camera:CameraService: Added lock on mHIDLMemPoolId in QDataCallback..
repopick 225540; # Camera: CameraHardwareInterface: Releasing mHIDLMemoryMapLock in QdataCallback

# frameworks/base
#repopick -c 30 225983; # Runtime toggle of navbar  
#repopick -c 30 225682; # Framework: Volume key cursor control  
#repopick -c 30 225683; # PhoneWindowManager: add LineageButtons volumekey hook  
#repopick -c 30 225684; # Long-press power while display is off for torch  
#repopick -c 30 225691; # SystemUI: Don't vibrate on touchscreen camera gesture  
#repopick -c 30 225692; # framework: move device key handler logic, fix gesture camera launch  
#repopick -c 30 225693; # SystemUI: add left and right virtual buttons while typing  
#repopick -c 30 225606; # Forward port 'Swap volume buttons' (1/3)  
#repopick -c 30 225702; # Camera: allow camera to use power key as shutter  
#repopick -c 30 225721; # Reimplement hardware keys custom rebinding  
#repopick -c 30 226249; # fw/b: Allow customisation of navbar app switch long press action  
#repopick -c 30 225722; # Reimplement device hardware wake keys support  
#repopick -c 30 225726; # PhoneWindowManager: Tap volume buttons to answer call  
#repopick -c 30 225727; # PhoneWindowManager: Implement press home to answer call  
#repopick -c 30 225728; # Camera button support  
#repopick -c 30 225729; # Framework: Forward port Long press back to kill app (2/2)  
#repopick -c 30 225734; # Allow screen unpinning on devices without navbar  
#repopick -c 30 226236; # SystemUI: add navbar button layout inversion tuning  
#repopick -c 30 225859; # storage: Do not notify for volumes on non-removable disks  
#repopick -c 30 226276; # power: Re-introduce custom charging sounds  
#repopick -c 30 224844; # lockscreen: Add option for showing unlock screen directly  
#repopick -c 30 225754; # SystemUI: Berry styles  
#repopick -c 30 225582; # [TEMP]: Revert "OMS: harden permission checks"  
#repopick -c 30 224446; # SystemUI: Make tablets great again  
#repopick -c 30 224513; # SystemUI: Disable config_keyguardUserSwitcher on sw600dp  
#repopick -c 30 226068; # Fix mounting of non-FAT formatted SD cards (1/2)  

# frameworks/native
repopick 224443; # libbinder: Don't log call trace when waiting for vendor service on non-eng builds
repopick 225545; # Forward port 'Swap volume buttons' (2/3)
repopick 225546; # AppOpsManager: Update with the new ops

# hardware/libhardware
repopick 223097; # hardware/libhw: Add display_defs.h to declare custom enums/flags
repopick 223681; # power hints

# hardware/qcom/audio
repopick 222693; # msm8960: treblize configuration
repopick 222694; # audio: Make CVD version retrieval nonfatal with ACDB v1
repopick 223338; # Revert "msm8x74: remove from top level makefile"
repopick 225117; # msm8960: Add some missing out/in types
repopick 225118; # msm8960: Add two stub microphone functions

# hardware/qcom/bt-caf
repopick -c 14 226647; # libbt-qcom: Allow building without proprietary bits
repopick -c 14 226648; # libbt: Fix case where SoC type is not set
repopick -c 14 226649; # Bluetooth: load btaddr from NV if QCOM_BT_USE_BTNV is set
repopick -c 14 226650; # libbt-qcom: Allow reading BT address from property
repopick -c 14 226651; # Add vendor-specific message types for FM.
repopick -c 14 226652; # Remove hardcoded LOCAL_MODULE_PATHS from vendor components. (bt)
repopick -c 14 226653; # BT: Moving chipset version parameters' initialization out of ALOG
repopick -c 14 226654; # Apply the Cherokee's mechanism of stopping hci_filter to ROME
repopick -c 14 226655; # Add missing headers to libbt-vendor
repopick -c 14 226656; # Load bluetooth firmwares from /vendor
repopick -c 14 226658; # Don't build libbt-hidlclient for OSS builds

# hardware/qcom/gps
#repopick -c 29 223347; # msm8960: Add support for IPV6 in AGPS Interface
#repopick -c 29 223348; # msm8960: Default apn ip type to ipv4
#repopick -c 29 223349; # gps: msm8960: Cleanup obsolete LOCAL_PRELINK_MODULE
#repopick -c 29 223350; # gps: msm8960: Move device dependent modules to /vendor
#repopick -c 29 223397; # msm8960: Return the correct length of nmea sentence

# hardware/qcom/wlan-caf
repopick -c 12 226638; # wcnss_qmi: Generate a fixed random mac address if the NV doesn't provide one  
repopick -c 12 226643; # wcnss_service: Read serial number from custom property  
repopick -c 12 227449; # libbt-vendor: Fix BLUETOOTH_MAC_ADDR_BOOT_PROPERTY definition  
repopick -c 12 227450; # libbt-vendor: Add missing vendor prefix to a bluetooth.status prop  

# lineage-sdk
repopick 225687; # PowerMenuConstants: Add user logout as new global action
repopick 225581; # lineage-sdk: Make styles init at system services ready

# packages/apps/Camera2
repopick -c 13 224752; # Use mCameraAgentNg for getting camera info when available
repopick -c 13 225255; # Camera2: Target API 27
repopick -c 13 225256; # Don't attempt to convert degree to orientation enum twice
repopick -c 13 225257; # Camera2: Only autofocus before a snap if we are actually in "auto" mode.
repopick -c 13 225258; # Camera2: Remove settings preferences only once
repopick -c 13 225259; # Camera2: Stop using GPS when going to background
repopick -c 13 225260; # Camera: Powerkey shutter (2/2)
repopick -c 13 225261; # Camera2: Add option to set max screen brightness
repopick -c 13 225262; # Camera2: Remove google help preference
repopick -c 13 225263; # Camera2: Fix Undo button behaviour
repopick -c 13 225264; # Fix crash if Exif-Tag buffer-length and component-count are both 0
repopick -c 13 225265; # Add Storage preference (1/2)

# packages/apps/DeskClock
repopick 225281; # DeskClock: Add back flip and shake actions
repopick 225284; # Provide upgrade path for cm-14.1 -> lineage-15.1
repopick 226131; # DeskClock: Add support of power off alarm feature
repopick 225280; # Make new menu entry to link to cLock widget settings.

# packages/apps/DocumentsUI
repopick 225289; # DocumentsUI: support night mode

# packages/apps/LineageParts
repopick 226392; # LineageParts: Set proper default value for charging sounds

# packages/apps/Nfc
repopick 223700; # NFC: Adding new vendor specific interface to NFC Service

# packages/apps/Settings
repopick -c 18 225686; # Settings: Add advanced restart switch
repopick -c 18 224973; # Settings: gesture: Add LineageParts touchscreen gesture settings
repopick -c 18 224974; # Settings: Allow devices to provide remote gesture preferences
repopick -c 18 225730; # Settings: Add kill app back button toggle
repopick -c 18 225800; # Settings: Add rotation settings
repopick -c 18 226142; # Settings: Add developer setting for root access
repopick -c 18 226148; # Settings: "Security 226148; location" -> "Security 226148; privacy"
repopick -c 18 226150; # Settings: add Trust interface hook
repopick -c 18 226151; # Settings: show Trust brading in confirm_lock_password UI
repopick -c 18 225570; # Settings: Add LineageParts charging sound settings preference
repopick -c 18 225755; # Settings: Hide AOSP theme-related controllers
repopick -c 18 225756; # Settings: fix dark style issues
repopick -c 18 226154; # fingerprint: Allow devices to configure sensor location
repopick -c 18 225858; # storage: Do not allow eject for volumes on non-removable disks
repopick -c 18 226391; # Settings: Hide lockdown in lockscreen settings
repopick -c 18 227120; # Settings: Check interfaces before enabling ADB over network

# packages/services/Telephony
repopick 225418; # Telephony: Add ERI configuration for U.S. Cellular
repopick 225420; # Use proper summary for network select list preference on dsds/dsda/tsts

# system/bt
repopick 225422; # Bluetooth: Read BLE vendor capability to proceed on Secure conn
repopick 223945; # Prevent abort in case of command timeout
repopick 225423; # Add support to force disable enhanced sco commands
repopick 224813; # bt: osi: undef PROPERTY_VALUE_MAX

##### # packages/providers/MediaProvider
repopick 225412; # Fix mounting of non-FAT formatted SD cards (2/2)  

##### # packages/services/Telephony
repopick 225418; # Telephony: Add ERI configuration for U.S. Cellular  
repopick 225420; # Use proper summary for network select list preference on dsds/dsda/tsts  

# system/core
repopick 223085; # adbd: Disable "adb root" by system property (2/3)
repopick 223500; # Add back fuse support
repopick 224264; # debuggerd: Resolve tombstoned missing O_CREAT mode

# system/sepolicy
repopick 223746; # Add rules required for TARGET_HAS_LEGACY_CAMERA_HAL1
repopick 223748; # Build sepolicy tools with Android.bp

# system/vold
repopick -c 18 225436; # vold: add support for more filesystems for public storage  
repopick -c 18 225437; # vold: Fix fsck on public volumes  
repopick -c 18 225438; # vold: Support internal storage partitions  
repopick -c 18 225439; # vold: Honor mount options for ext4 partitions  
repopick -c 18 225440; # vold: Honor mount options for f2fs partitions  
repopick -c 18 225441; # vold: Mount ext4/f2fs portable storage with sdcard_posix  
repopick -c 18 225442; # vold: ntfs: Use strlcat  
repopick -c 18 225443; # Treat removable UFS card as SD card  
##### # repopick -c 18 225444; # vold: dont't use commas in device names  
repopick -c 18 225445; # vold ext4/f2fs: do not use dirsync if we're mounting adopted storage  
repopick -c 18 225446; # Fix the group permissions of the sdcard root.  
repopick -c 18 225447; # vold: skip first disk change when converting MBR to GPT  
repopick -c 18 225448; # vold: Allow reset after shutdown  
repopick -c 18 225449; # vold: Accept Linux GPT partitions on external SD cards  
repopick -c 18 225450; # vold: Make sure block device exists before formatting it  
repopick -c 18 225451; # vold: Also wait for dm device when mounting private volume  
repopick -c 18 225452; # secdiscard: should pin_file to avoid moving blocks in F2FS  


#fix out the legacy sound
sed -i 's/ENODEV/19/g' frameworks/av/services/soundtrigger/SoundTriggerHalLegacy.cpp
sed -i 's/ENOSYS/38/g' frameworks/av/services/soundtrigger/SoundTriggerHalLegacy.cpp


