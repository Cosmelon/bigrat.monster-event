# Description: makes "completely random" teams
# Author: Cosmelon
# Type: single
# run from <manual>

# remove tags for assurance
tag @a remove red-1
tag @a remove red-2
tag @a remove red-3
tag @a remove red-4
tag @a remove blue-1
tag @a remove blue-2
tag @a remove blue-3
tag @a remove blue-4
tag @a remove green-1
tag @a remove green-2
tag @a remove green-3
tag @a remove green-4
tag @a remove yellow-1
tag @a remove yellow-2
tag @a remove yellow-3
tag @a remove yellow-4

# clear the existing player teams
team empty Red
team empty Blue
team empty Green
team empty Yellow

# assign to teams; trying to ensure "even enough" distribution
team join Red @a[team=Spectator,limit=1,sort=random]
team join Blue @a[team=Spectator,limit=1,sort=random]
team join Green @a[team=Spectator,limit=1,sort=random]
team join Yellow @a[team=Spectator,limit=1,sort=random]
team join Red @a[team=Spectator,limit=1,sort=random]
team join Blue @a[team=Spectator,limit=1,sort=random]
team join Green @a[team=Spectator,limit=1,sort=random]
team join Yellow @a[team=Spectator,limit=1,sort=random]
team join Red @a[team=Spectator,limit=1,sort=random]
team join Blue @a[team=Spectator,limit=1,sort=random]
team join Green @a[team=Spectator,limit=1,sort=random]
team join Yellow @a[team=Spectator,limit=1,sort=random]
team join Red @a[team=Spectator,limit=1,sort=random]
team join Blue @a[team=Spectator,limit=1,sort=random]
team join Green @a[team=Spectator,limit=1,sort=random]
team join Yellow @a[team=Spectator,limit=1,sort=random]

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


# dead
data modify block 982 28 -6014 Text1 set value '[{"text":"\\uE006"},{"selector":"@a[tag=red-1]"}]'
data modify block 982 28 -6014 Text2 set value '[{"text":"\\uE006"},{"selector":"@a[tag=red-2]"}]'
data modify block 982 28 -6014 Text3 set value '[{"text":"\\uE006"},{"selector":"@a[tag=red-3]"}]'
data modify block 982 28 -6014 Text4 set value '[{"text":"\\uE006"},{"selector":"@a[tag=red-4]"}]'

data modify block 983 28 -6014 Text1 set value '[{"text":"\\uE006"},{"selector":"@a[tag=blue-1]"}]'
data modify block 983 28 -6014 Text2 set value '[{"text":"\\uE006"},{"selector":"@a[tag=blue-2]"}]'
data modify block 983 28 -6014 Text3 set value '[{"text":"\\uE006"},{"selector":"@a[tag=blue-3]"}]'
data modify block 983 28 -6014 Text4 set value '[{"text":"\\uE006"},{"selector":"@a[tag=blue-4]"}]'

data modify block 984 28 -6014 Text1 set value '[{"text":"\\uE006"},{"selector":"@a[tag=green-1]"}]'
data modify block 984 28 -6014 Text2 set value '[{"text":"\\uE006"},{"selector":"@a[tag=green-2]"}]'
data modify block 984 28 -6014 Text3 set value '[{"text":"\\uE006"},{"selector":"@a[tag=green-3]"}]'
data modify block 984 28 -6014 Text4 set value '[{"text":"\\uE006"},{"selector":"@a[tag=green-4]"}]'

data modify block 985 28 -6014 Text1 set value '[{"text":"\\uE006"},{"selector":"@a[tag=yellow-1]"}]'
data modify block 985 28 -6014 Text2 set value '[{"text":"\\uE006"},{"selector":"@a[tag=yellow-2]"}]'
data modify block 985 28 -6014 Text3 set value '[{"text":"\\uE006"},{"selector":"@a[tag=yellow-3]"}]'
data modify block 985 28 -6014 Text4 set value '[{"text":"\\uE006"},{"selector":"@a[tag=yellow-4]"}]'

# alive
data modify block 982 28 -6013 Text1 set value '[{"text":"\\uE007"},{"selector":"@a[tag=red-1]"}]'
data modify block 982 28 -6013 Text2 set value '[{"text":"\\uE007"},{"selector":"@a[tag=red-2]"}]'
data modify block 982 28 -6013 Text3 set value '[{"text":"\\uE007"},{"selector":"@a[tag=red-3]"}]'
data modify block 982 28 -6013 Text4 set value '[{"text":"\\uE007"},{"selector":"@a[tag=red-4]"}]'

data modify block 983 28 -6013 Text1 set value '[{"text":"\\uE007"},{"selector":"@a[tag=blue-1]"}]'
data modify block 983 28 -6013 Text2 set value '[{"text":"\\uE007"},{"selector":"@a[tag=blue-2]"}]'
data modify block 983 28 -6013 Text3 set value '[{"text":"\\uE007"},{"selector":"@a[tag=blue-3]"}]'
data modify block 983 28 -6013 Text4 set value '[{"text":"\\uE007"},{"selector":"@a[tag=blue-4]"}]'

data modify block 984 28 -6013 Text1 set value '[{"text":"\\uE007"},{"selector":"@a[tag=green-1]"}]'
data modify block 984 28 -6013 Text2 set value '[{"text":"\\uE007"},{"selector":"@a[tag=green-2]"}]'
data modify block 984 28 -6013 Text3 set value '[{"text":"\\uE007"},{"selector":"@a[tag=green-3]"}]'
data modify block 984 28 -6013 Text4 set value '[{"text":"\\uE007"},{"selector":"@a[tag=green-4]"}]'

data modify block 985 28 -6013 Text1 set value '[{"text":"\\uE007"},{"selector":"@a[tag=yellow-1]"}]'
data modify block 985 28 -6013 Text2 set value '[{"text":"\\uE007"},{"selector":"@a[tag=yellow-2]"}]'
data modify block 985 28 -6013 Text3 set value '[{"text":"\\uE007"},{"selector":"@a[tag=yellow-3]"}]'
data modify block 985 28 -6013 Text4 set value '[{"text":"\\uE007"},{"selector":"@a[tag=yellow-4]"}]'