#Update build number with number of git commits
buildNumber=`git rev-list HEAD --count`
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "${PROJECT_DIR}/${INFOPLIST_FILE}"