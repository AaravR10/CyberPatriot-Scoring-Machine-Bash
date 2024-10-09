CyberPatriot Bash Scoring Machine

Hello!
I'm Aarav Ragoonanan, I created this scoring machine for extra practice, but I would appreciate any feedback, thanks!

**Important Announcements**
A new version of this scoring machine will be slowly updated here

**Packages Needed for this**
- The operating system has to have a bash terminal

**How to use**
1. Copy text from score.sh
2. Paste into file inside virtual machine (for example, score.sh)
3. Edit the scoring machine to your preferences. (There are comments written into the file that explains how to edit it)
4. Once all the changes that you want are made, save the file
5. In your terminal run the command
`chmod +x score.sh`
6. After running this command, run
`sudo nano .bashrc`
7. When inside `.bashrc`, scroll down to where there is a gap in between two commands
8. Add the code
`alias score='sudo bash /home/mainuser/score.sh'`
This will add the code so that when the command `score` is run, the scoring machine will run (just makes the process easier)
9. Refresh the .bashrc file by running
`source ~/.bashrc`

**More on how to set it up**
1. Go into the main user's `/Desktop` folder and create a file called `yourfilenamehere.desktop`
2. In the file, write:

`[Desktop Entry]
Name={WhateverYouWantYourScoringMachine'sNameToBe}
Type=Application
Exec=bash /home/youruser/yourscoringmachinefile(score.sh)
Icon=/home/youruser/Pictures/somerandomfile.jpeg
Terminal=false`

You don't need the `Icon` part if you don't want the scoring button on your screen to have an image.
`Terminal=false` just prevents the scoring machine (score.sh) from being run in a terminal when this button is used. When the regular command `score` is used, it will appear in the terminal as normal.

3. On the file that appears on your home screen, right click it and press `Allow Launching`. This will allow it to work properly.

That's it! Let me know if you have any problems


**What's Next??**
1. Crontab to make the script run every minute in order to check whether or not to send the notification
   
   If anyone knows how to make the crontab for this, I would appreciate the help. I've tried `sudo crontab -e` and then `* * * * * /home/youruser/score.sh` but this doesn't work. Does anyone know any other ways to do this?
3. HTML Page for the scoring machine
4. Possible Python version of the scoring machine
