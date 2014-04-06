#Update version number with last git tag
tags_count=`git tag | wc -l | tr -d ' '`

if [[ "$tags_count" = "0" ]]; then
	echo -e "warning: There is no tag in git! Please create a tag.\n Run this commands to create a tag - \n git tag  1.0.0 \n git push --tags"
else
	tag_version_string=$(git describe --tags --abbrev=0)
	echo "Version: $tag_version_string"
	/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $tag_version_string" "${PROJECT_DIR}/${INFOPLIST_FILE}"
fi