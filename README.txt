+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

============================ Info
Background changes based on the day. Mon, Tue, Wed ....


============================ Flow of Scripts
The wallpaper.ps1 script will be the actual script that changes the background
The caller.vbs script will be running the wallpaper.ps1 script in the background, so there will be no window / cmd pop up (though its just for a split second, it can be annoying)
Task schedule will then run "WSCRIPT caller.vbs" -> caller.vbs will run wallpaper.ps1 in background


============================ By
:Lim:MMU Hackerspace:

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


============================= Run the setup script (RUNME.bat)
right click RUNME.bat and run the script as admin
After that, you should see that your background changed according to the day


============================= How To Customize
(optional / customization) replace Monday.bmp - Sunday.bmp with your own images (re-use the name of the files, lets say you have a background image in .png/.jpg format now, you will have to convert it into .bmp and rename the images accordingly to replace the deleted images) OR (open wallpaper.ps1 and edit the code according to your file name)


======================= Deleting / Removing
Run the DELETEME.bat, then delete this folder
Depending on weather or not you have other scripts running, you may or may not want to "Set-ExecutionPolicy" back to "Restricted" in your powershell.


======================= END
Have A Great Time !!!