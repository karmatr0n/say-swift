Description
===========
This is a pretty basic example to use the ApplicationServices framework
from Swift in MacOS.

Check the same implementation in C:

https://github.com/juarlex/say

Build instructions
=====================

$ xcrun swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) -o say say.swift

Command execution
=================

$ say

or

$ say 1 Hello

References
==========
This program is inspired in the command line tool say.

$ man say
