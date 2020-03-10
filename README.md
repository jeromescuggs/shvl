# shvl
automated mass messaging+scheduler

## notes
The aim of this project is to ideally deploy this from a secure or insecure environment (ie, either from a workplace intranet or from home) and, given a database of phone numbers, simply proceed to send out a mass message to this list. For my own purposes I am aiming for a way to let employees know either 1) when a shift starts, or 2) if a shift start-time has changed. I work in an industry which is often beset by surprises, and in 24 hours the ideal start-time for a scheduled shift might change - currently the methods in place to get this information out is more or less by word-of-mouth and often leads to confusion. This project is an attempt at providing a tool that will allow someone to rapidly send out information, without necessarily having to keep a contact list of every employee on their own phone. 

## name
SHVL is a sort of two-layer title. SHV is the shortcode for Shreveport, the location of my workplace. However, it is also a nod to a former manager, by the name of Shrivell. She had a knack for relentlessly send out texts and phone calls, even if it was after midnight, or an hour before a shift. Although it was annoying at times, I found that it was a good way to remind someone like me, who is just a *taaaddd* bit ADHD, to set my alarms and whatnot. I large goal of this project will be to hopefully setup a cron job which will automatically send out the next day's start time, the evening before. Currently the start time is given out daily at the end of a shift, and in my own case I often forget to set my alarms as I usually go straight home and grab some sleep. 

## other
remember to run `git submodule update --init` which will download the `html-vault` subfolder. you don't need it, but it's a nifty script that will take a file, encrypt it, and generate an HTML file. you can then post it publicly, but only those with the password will be able to view the encrypted contents. I used it here to encrypt the tokens needed to validate the program against the Textbelt service. If you're a pentester and come across this page, let me know how strong this method is! :)


