scoreboard players operation $TempQueueCount archeryQueuePosition = @s archeryQueuePosition
execute as @a[scores={archeryQueuePosition=0..}] if score @s archeryQueuePosition > $TempQueueCount archeryQueuePosition run scoreboard players remove @s archeryQueuePosition 1
scoreboard players remove $NextPosition archeryQueuePosition 1
scoreboard players reset @s archeryQueuePosition
tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"You have been removed from the queue."}]
title @s actionbar ""

function sg:lobby/archery/queue/text_display