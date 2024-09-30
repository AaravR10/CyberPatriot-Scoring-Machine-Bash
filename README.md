CyberPatriot Bash Scoring Machine

Hello!
I'm Aarav Ragoonanan, I created this scoring machine for extra practice, but I would appreciate any feedback, thanks!

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

That's it! Let me know if you have any problems


**What's Next??**
1. Crontab to make the script run every minute in order to check whether or not to send the notification
   
   If anyone knows how to make the crontab for this, I would appreciate the help. I've tried `sudo crontab -e` and then `* * * * * /home/youruser/score.sh` but this doesn't work. Does anyone know any other ways to do this?
3. HTML Page for the scoring machine
4. Possible Python version of the scoring machine
