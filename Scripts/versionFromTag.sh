#Update version number with last git tag
tags_count = `git tag | wc -l | tr -d ' '`

if [[ $tags_count = 0 ]]; then
	echo "warning: There is no tags in git! Please create a tag"
else
	tag_version_string=$(git describe --abbrev=0)
	echo $tag_version_string
	#if [ ${CONFIGURATION} == "Release" ]; then
	#	echo "Release Mode"
	#fi
	/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $tag_version_string" "${PROJECT_DIR}/${INFOPLIST_FILE}"
fi