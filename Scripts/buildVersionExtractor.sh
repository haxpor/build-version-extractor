# extract build number for a project, and write it to info.plist file
# it will be done before copy-phase thus changes are for project itself

echo "Extracting build numbers"

# Dir of Versions.h to extract build version
targetFile="${PROJECT_DIR}/${PROJECT_NAME}/Versions.h"

# major version
majorVersion=`cat $targetFile | grep '^#define APP_MAJOR_VERSION' | awk '{print $3}'`

# minor version
minorVersion=`cat $targetFile | grep '^#define APP_MINOR_VERSION' | awk '{print $3}'`

#revision version
revisionVersion=`cat $targetFile | grep '^#define APP_REVISION_VERSION' | awk '{print $3}'`

# combine each build number
buildNumber=$majorVersion.$minorVersion.$revisionVersion
echo "combined build number: $buildNumber"

# set it back to info.plist
echo "Setting build number to info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "${INFOPLIST_FILE}"