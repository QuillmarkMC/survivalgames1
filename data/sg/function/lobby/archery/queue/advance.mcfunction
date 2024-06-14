execute as @a[scores={archeryQueuePosition=0},limit=1] run function sg:lobby/archery/start
execute as @a[scores={archeryQueuePosition=1..}] run scoreboard players remove @s archeryQueuePosition 1
execute unless score $NextPosition archeryQueuePosition matches 0 run scoreboard players remove $NextPosition archeryQueuePosition 1

function sg:lobby/archery/queue/text_display