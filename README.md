# UsefulUtilities

I have planned to add the random utilities which i am going to create to make my everyday life easier.

I will also update the contents here when i keep adding more.

1) adbx:

please checkout this article on how to install adb in  your OS:

http://lifehacker.com/the-easiest-way-to-install-androids-adb-and-fastboot-to-1586992378

I regularly use adb pull to copy files from my android device to my computer. Usually, after copying the files I will manually delete those files from the device. So, I have planned to merge these steps together in "adbx". 
please add this to your profile file in the shell after cloning, so that you can simply invoke using "adbx"

alias adbx="bash /Users/pandeesh/github/UsefulUtilities/adbx.sh"

replace the path with your local path.
