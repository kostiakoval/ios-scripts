ios-scripts
===========
Useful collection of scripts for iOS

How to setup
===========
1. Open Xcode project. Select your target  
2. Editor -> Add Build Phase -> Add Run Script Build Phase  
3. Open "Run Script" section that was created and add you script there.  
   Example: "${SRCROOT}/Scripts/versionFromTag.sh"  

![Screenshot](/readme/script-full-screen.jpg "Step 1-2")  
![Screenshot](/readme/script-files-setup.jpg "Step 3")  

----

### Icon Versioning
***iconVersioning.sh***  
Generate app icon with build number, version and commit information. Really usefull for testing.  

Autor - [Krzysztof Zabłocki](https://github.com/krzysztofzablocki)  
Source - [git project](https://github.com/krzysztofzablocki/IconOverlaying)  

### Build number automatic update
***bundleVersioning.sh***  
Use a git commits to set a Build Number. This is the safest way to set build number.
Automaticaly update Bundle Number with a count of git commits.  

Autor - [Konstantin Koval](https://github.com/konstantinkoval)  


### Version Number automatic update
***versionFromTag.sh***  
Use a git tag for Version Number.  
Automaticaly update Version Number with latest tag. When you make a new release create new tag.

***Recomend*** reading and using:  
[Git flow](http://nvie.com/posts/a-successful-git-branching-model)  
[Semantic versioning](http://semver.org)  

Autor - [Konstantin Koval](https://github.com/konstantinkoval)  
