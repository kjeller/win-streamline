# What is this?

This is a tiny batch script that download and install windows applications from a list of application IDs.

I got tired of installing every application manually and all the other tools for doing this got these annoying clicky-boxes where you have to think about what applications you want. I don't want that - I just want to install all the applications from a list of applications.

One limitation is that the application needs to be part of windows/winget repository/registry. To add more applications to list, first check if the application has been added to winget:
`winget search <application>`

# How do I run this?

1) Install winget from (here)[https://learn.microsoft.com/en-us/windows/package-manager/winget/]

2) Run batch script (as administrator to avoid elevated prompts):
 `winget-applications.bat`
