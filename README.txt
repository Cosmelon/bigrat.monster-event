This repository is the working file directory for files to be uploaded to the minecraft server

all the region files are deleted and ignored, this is just a repo for the code


Some basic documentation I made while in class
    - 4 player teams + Admin & Spectator
    - all players on teams Red, Blue, Green, Yellow have the 'player' tag
    - users with 'admin' tag can see specific debug messages in chat
    - users not on the 'admin' team will always log in at the lobby
    - main:telemenu is the admin teleport panel, accessible with /op only
    - all gametick functions are run from main:tick but are only active when their gameActive score == 1
    - to return to the lobby, just use main:returnlobby in your win function and add specifics to main:lobby
    - IMPORTANT: On push, code is sent to the minecraft server via GitHub Actions, disable the workflow to prevent it

Globally tracked scoreboards
    - currentGame tracks what game is being currently played but is independent of each game's round system
    - teamCheck always tracks the number of players on each team to prevent gameloop
    - yCos tracks every user's y level
    - playersOnline - self-explantory

currently used prefixes
$spleef
!race
~sg
?blockParty


Disclaimers:
    - A lot of the code that I've written sucks really, really hard and hurts to look at, optimizing and cleaning up is in the works but I'm currently focused on functionality first
    - the rng systems that I have made are absolutely terrible, a better alternative is in the works but low priority