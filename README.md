buildVersionExtractor
=====================

It's easier to set app's version directly into the source file without messing around at .plist file which is slower in editing.

buildVersionExtractor will help automating that process.
This project is for iOS-based project.

What does it do?
----------------
There's a build script (execute before copy-phase) to extract value from the following #define in Versions.h

1. APP_MAJOR_VERSION
2. APP_MINOR_VERSION
3. APP_REVISION_VERSION

Each of them can be defined with integer value or floating point value but without f ie. 1.0f.
Then the script will combine them into a nice build version format as follows

APP_MAJOR_VERSION.APP_MINOR_VERSION.APP_REVISION_VERSION

Benefit in short
----------------
Focus changing app's version at one place, the easy way for programmer at source file.

Contact
-------
Connect with me via Twitter ([@haxpor](https://twitter.com/haxpor))