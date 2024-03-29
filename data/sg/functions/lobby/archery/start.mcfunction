#tp player
tp @s @e[type=armor_stand,tag=SGArcherySeat,limit=1]
ride @s mount @e[type=armor_stand,tag=SGArcherySeat,limit=1]
#tag player
tag @s add SGArcheryPlayer
scoreboard players reset @s archeryQueuePosition
execute unless score @s archeryHighscore matches 0.. run scoreboard players set @s archeryHighscore 0
#countdown
scoreboard players set $Countdown archeryVar 3
function sg:lobby/archery/countdown/count
#inventory
scoreboard players operation @s inventoryState = $Lobby.Archery inventoryState
advancement grant @s only sg:inv_changed
#timer bossbar
scoreboard players operation $Timer archeryVar = $MaxLength archeryVar
function sg:lobby/archery/gameplay/timer/display
bossbar set archery players @s
#reset score
scoreboard players set $CurrentScore archeryVar 0
#minigame state
scoreboard players set $GameInProgress archeryVar 1

tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"translate":"text.lobby.archery.start"}]
title @s actionbar ""
function sg:lobby/archery/queue/text_display