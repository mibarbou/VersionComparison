# VersionComparison
Util library to compare app versions in Swift

Small Util to compare version strings from an App.

Import the VersionComparison.swift file to your project.

v1 = "1.0.1"
v2 = 1

VersionComparison.isVersion(v1, newerOrEqualThan: v2)  returns true

for example:

versions 1 is equal to 1.0 or 1.0.0

version 2.2 is superior to 2.1.9

