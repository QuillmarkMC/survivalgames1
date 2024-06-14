scoreboard players operation $TempQueueCount 1v1QueuePosition = @s 1v1QueuePosition
execute as @a[scores={1v1QueuePosition=0..}] if score @s 1v1QueuePosition > $TempQueueCount 1v1QueuePosition run scoreboard players remove @s 1v1QueuePosition 1
scoreboard players remove $NextPosition 1v1QueuePosition 1
scoreboard players reset @s 1v1QueuePosition
scoreboard players set $TempQueueCount 1v1QueuePosition -1
tellraw @s [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"translate":"text.lobby.1v1.leave_queue"}]
title @s actionbar ""

function sg:lobby/1v1/queue/text_display