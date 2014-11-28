Description
===========
This is a pretty basic example to use the ApplicationServices framework
from Swift in MacOS.

Check the same implementation in C:

https://github.com/juarlex/say

Build instructions
=====================

$ xcrun swiftc -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk -o say say.swift

Command execution
=================

$ say

or

$ say 1 Hello

References
==========
This program is inspired in the command line tool say.

$ man say
