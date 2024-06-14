function sg:lobby/1v1/markers/summon
#reset queue
#reset scoreboard objectives
execute unless score $Arena1State 1v1Var matches 0 run function sg:lobby/1v1/arena1/end
scoreboard players set $Arena1State 1v1Var 0
execute unless score $Arena2State 1v1Var matches 0 run function sg:lobby/1v1/arena2/end
scoreboard players set $Arena2State 1v1Var 0

#reset queue
execute as @a[scores={1v1QueuePosition=0..}] run function sg:lobby/1v1/queue/leave
scoreboard players set $NextPosition 1v1QueuePosition 0
scoreboard players set $TempQueueCount 1v1QueuePosition -1
#init highscore
execute unless score $Global 1v1Highscore matches 0.. run scoreboard players set $Global 1v1Highscore 0

#text display
kill @e[type=text_display,tag=SG1v1QueueDisplay]
summon text_display -211.0 17.5 168.5 {Tags:["SG1v1QueueDisplay"],alignment:"center",text:'{"text": ""}',billboard:"center",background:0}
function sg:lobby/1v1/queue/text_display

scoreboard players set $MaxLength 1v1Var 90
bossbar add 1v1arena1 ""
bossbar set 1v1arena1 visible true
bossbar set 1v1arena1 color yellow
execute store result bossbar 1v1arena1 max run scoreboard players get $MaxLength 1v1Var
bossbar add 1v1arena2 ""
bossbar set 1v1arena2 visible true
bossbar set 1v1arena2 color yellow
execute store result bossbar 1v1arena2 max run scoreboard players get $MaxLength 1v1Var