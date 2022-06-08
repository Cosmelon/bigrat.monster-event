# Description: makes "completely random" teams
# Author: Cosmelon
# Type: single
# run from <manual>

# clear the player teams
team empty Red
team empty Blue
team empty Green
team empty Yellow

# assign to teams
team join Red @a[team=Spectator,limit=4,sort=random]
team join Blue @a[team=Spectator,limit=4,sort=random]
team join Green @a[team=Spectator,limit=4,sort=random]
team join Yellow @a[team=Spectator,limit=4,sort=random]

# get tags
tag @a[team=Red,limit=1,sort=random] add red-1
tag @a[team=Red,limit=1,sort=random,tag=!red-1] add red-2
tag @a[team=Red,limit=1,sort=random,tag=!red-1,tag=!red-2] add red-3
tag @a[team=Red,limit=1,sort=random,tag=!red-1,tag=!red-2,tag=!red-3] add red-4
tag @a[team=Blue,limit=1,sort=random] add blue-1
tag @a[team=Blue,limit=1,sort=random,tag=!blue-1] add blue-2
tag @a[team=Blue,limit=1,sort=random,tag=!blue-1,tag=!blue-2] add blue-3
tag @a[team=Blue,limit=1,sort=random,tag=!blue-1,tag=!blue-2,tag=!blue-3] add blue-4
tag @a[team=Green,limit=1,sort=random] add green-1
tag @a[team=Green,limit=1,sort=random,tag=!green-1] add green-2
tag @a[team=Green,limit=1,sort=random,tag=!green-1,tag=!green-2] add green-3
tag @a[team=Green,limit=1,sort=random,tag=!green-1,tag=!green-2,tag=!green-3] add green-4
tag @a[team=Yellow,limit=1,sort=random] add yellow-1
tag @a[team=Yellow,limit=1,sort=random,tag=!yellow-1] add yellow-2
tag @a[team=Yellow,limit=1,sort=random,tag=!yellow-1,tag=!yellow-2] add yellow-3
tag @a[team=Yellow,limit=1,sort=random,tag=!yellow-1,tag=!yellow-2,tag=!yellow-3] add yellow-4