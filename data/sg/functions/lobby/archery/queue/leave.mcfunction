scoreboard players operation $TempQueueCount archeryQueuePosition = @s archeryQueuePosition
execute as @a[scores={archeryQueuePosition=0..}] if score @s archeryQueuePosition > $TempQueueCount archeryQueuePosition run scoreboard players remove @s archeryQueuePosition 1
scoreboard players remove $NextPosition archeryQueuePosition 1
scoreboard players reset @s archeryQueuePosition
scoreboard players set $TempQueueCount archeryQueuePosition -1
tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"translate":"text.lobby.1v1.leave_queue"}]
title @s actionbar ""

function sg:lobby/archery/queue/text_display