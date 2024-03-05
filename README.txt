This repository is the working file directory for files to be uploaded to the minecraft server

all the region files are deleted and ignored, this is just a repo for the code

Disclaimers:
    - A lot of the code that I've written sucks really, really hard and hurts to look at, optimizing and cleaning up is in the works but I'm currently focused on functionality first
    - the rng systems that I have made are absolutely terrible, a better alternative is in the works but low priority

Globally tracked scoreboards (.global)
    - br_cgame      - what game is being currently played but is independent of each game's round system
    - br_tcheck     - the number of players on each team; prevents gameloop
    - br_yCos       - y level
    - br_online     - offline = 1, online = 0
    - indivScore    - raw player individual scores
    - indivMath     - determines individual player position
    - indivPos      - individual player position output
    - teamScores    - raw team scores