CyberPatriot Bash Scoring Machine

Hello!
I'm Aarav Ragoonanan, I created this scoring machine for extra practice, but I would appreciate any feedback, thanks!

**Packages Needed for this**
- notify-send `sudo apt-get install libnotify-bin`
- postfix `sudo apt install postfix`
   This is needed to send the notifications when the bash script is being run from the crontab
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
   
   Experimental: Try `sudo crontab -e` to create the crontab for the script
   
   In the crontab write `* * * * * sudo bash /home/youruser/score.sh`
   
   Save the crontab
   
   This shouldn't actually run the script, it should only work for the notification portion of the script, so therefore whenever the user gains points, they will get a notification
3. HTML Page for the scoring machine
4. Possible Python version of the scoring machine
