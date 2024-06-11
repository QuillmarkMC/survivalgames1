#recursive clusterfuck
#called every tick to determine if a player unexpectedly left the queue for whatever reason
execute unless score $TempQueueCount 1v1QueuePosition matches -1 run scoreboard players add $TempQueueCount 1v1QueuePosition 1
execute if score $TempQueueCount 1v1QueuePosition matches -1 run scoreboard players set $TempQueueCount 1v1QueuePosition 0
execute as @a[scores={1v1QueuePosition=0..}] if score @s 1v1QueuePosition = $TempQueueCount 1v1QueuePosition run function sg:lobby/1v1/queue/arbitrary_update
#first time it does not detect a player, execute as all players with a queue position greater than that position and subtract 1
execute unless score $TempQueueCount 1v1QueuePosition matches -1 as @a[scores={1v1QueuePosition=0..}] if score @s 1v1QueuePosition > $TempQueueCount 1v1QueuePosition run scoreboard players remove @s 1v1QueuePosition 1
execute unless score $TempQueueCount 1v1QueuePosition matches -1 unless score $NextPosition 1v1QueuePosition = $TempQueueCount 1v1QueuePosition run scoreboard players remove $NextPosition 1v1QueuePosition 1
scoreboard players set $TempQueueCount 1v1QueuePosition -1