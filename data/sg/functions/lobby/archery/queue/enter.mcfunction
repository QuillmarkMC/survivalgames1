#give player next position score
scoreboard players operation @s archeryQueuePosition = $NextPosition archeryQueuePosition
scoreboard players add $NextPosition archeryQueuePosition 1
function sg:lobby/archery/queue/text_display
#teleport to waiting area
tp @s @e[type=marker,tag=SGArcheryQueueSpawn,sort=random,limit=1]
execute if entity @a[tag=SGArcheryPlayer,limit=1] run tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"You are now waiting to participate in Archery Practice. If you leave the area you will be removed from the queue!"}]

execute if score $GameInProgress archeryVar matches 0 run function sg:lobby/archery/queue/advance