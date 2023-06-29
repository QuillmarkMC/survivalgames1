#recursive clusterfuck
#called every tick to determine if a player unexpectedly left the queue for whatever reason
execute unless score $TempQueueCount archeryQueuePosition matches -1 run scoreboard players add $TempQueueCount archeryQueuePosition 1
execute if score $TempQueueCount archeryQueuePosition matches -1 run scoreboard players set $TempQueueCount archeryQueuePosition 0
execute as @a[scores={archeryQueuePosition=0..}] if score @s archeryQueuePosition = $TempQueueCount archeryQueuePosition run function sg:lobby/archery/queue/arbitrary_update
#first time it does not detect a player, execute as all players with a queue position greater than that position and subtract 1
execute unless score $TempQueueCount archeryQueuePosition matches -1 as @a[scores={archeryQueuePosition=0..}] if score @s archeryQueuePosition > $TempQueueCount archeryQueuePosition run scoreboard players remove @s archeryQueuePosition 1
execute unless score $TempQueueCount archeryQueuePosition matches -1 unless score $NextPosition archeryQueuePosition = $TempQueueCount archeryQueuePosition run scoreboard players remove $NextPosition archeryQueuePosition 1
scoreboard players set $TempQueueCount archeryQueuePosition -1