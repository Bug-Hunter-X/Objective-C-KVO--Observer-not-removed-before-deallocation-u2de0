# Objective-C KVO: Observer not removed before deallocation

This repository demonstrates a common, yet subtle, bug in Objective-C related to Key-Value Observing (KVO) and memory management.  Failure to remove observers before the observed object is deallocated can lead to crashes or unpredictable behavior.

The `bug.m` file contains code that showcases this issue. The `bugSolution.m` file demonstrates the correct way to handle KVO to prevent such problems.  Read the comments in both files for more detail.