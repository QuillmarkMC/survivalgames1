#give player next position score
scoreboard players operation @s 1v1QueuePosition = $NextPosition 1v1QueuePosition
scoreboard players add $NextPosition 1v1QueuePosition 1
function sg:lobby/1v1/queue/text_display
#teleport to waiting area
tp @s @e[type=marker,tag=SG1v1QueueSpawn,sort=random,limit=1]
execute if score $ArenaAvailable 1v1Var matches ..0 run tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"You are now waiting to participate in 1v1s. If you leave the area you will be removed from the queue!"}]

execute if score $ArenaAvailable 1v1Var matches 1.. if score $NextPosition 1v1QueuePosition matches 2.. run function sg:lobby/1v1/queue/advance