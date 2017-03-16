Description
===========
This is a pretty basic example to use the ApplicationServices framework
from Swift in MacOS.

Check a similar implementation in C:

https://github.com/karmatr0n/say

Build instructions
=====================

$ xcrun swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) -o say say.swift

Command execution
=================

$ say

or

$ say Hello

References
==========
This program is inspired in the command line tool say.

$ man say
