#tp player
ride @s mount @e[type=armor_stand,tag=SGArcherySeat,limit=1]
#tag player
tag @s add SGArcheryPlayer
scoreboard players reset @s archeryQueuePosition
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

tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"You have 1 minute to shoot as many enemies as possible. Good luck!"}]
title @s actionbar ""
function sg:lobby/archery/queue/text_display