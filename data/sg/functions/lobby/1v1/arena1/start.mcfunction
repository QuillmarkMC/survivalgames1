#tag players
tag @a[tag=SG1v1Preparing,limit=2] add SG1v1Arena1
tag @a[tag=SG1v1Preparing,limit=2] remove SG1v1Preparing
tag @a[tag=SG1v1Preparing,limit=1] add SG1v1Player1Arena1
tag @a[tag=SG1v1Preparing,tag=!SG1v1Player1Arena1,limit=1] add SG1v1Player2Arena1
scoreboard players reset @a[tag=SG1v1Preparing,limit=2] 1v1QueuePosition
execute as @a[tag=SG1v1Arena1,limit=2] unless score @s 1v1Killstreak matches 0.. run scoreboard players set @s 1v1Killstreak 0

scoreboard players reset @a[tag=SG1v1Arena1,limit=2] 1v1Kill

#generate
function sg:lobby/1v1/arena1/generate/advance_selection
function sg:lobby/1v1/arena1/spectate/summon

#tp player
gamemode spectator @a[tag=SG1v1Arena1,limit=2]
spectate @e[type=armor_stand,tag=SGArena1Player1Spectate,limit=1] @a[tag=SG1v1Player1Arena1,limit=1]
spectate @e[type=armor_stand,tag=SGArena1Player2Spectate,limit=1] @a[tag=SG1v1Player2Arena1,limit=1]

#inventory
scoreboard players operation @a[tag=SG1v1Arena1,limit=2] inventoryState = $Lobby.1v1 inventoryState
advancement grant @a[tag=SG1v1Arena1,limit=2] only sg:inv_changed
#timer bossbar
scoreboard players operation $Timer1 1v1Var = $MaxLength 1v1Var
function sg:lobby/1v1/arena1/timer/display
#minigame state
scoreboard players set $Arena1State 1v1Var 1
scoreboard players remove $ArenaAvailable 1v1Var 1

tellraw @a[tag=SG1v1Arena1,limit=2] [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"text":"Please wait while the arena is generating..."}]
title @a[tag=SG1v1Arena1,limit=2] actionbar ""
function sg:lobby/1v1/queue/text_display
