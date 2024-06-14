#this function is called already knowing at least 1 arena will be available and there are 2+ people in queue
#pick first 2 people in queue, tag them, then select an arena to proceed with logic
execute as @a[scores={1v1QueuePosition=0..1}] run tag @s add SG1v1Preparing
function sg:lobby/1v1/queue/pick_arena

#after arena generation has begun, rest of the queue can advance
execute as @a[scores={1v1QueuePosition=2..}] run scoreboard players remove @s 1v1QueuePosition 2
execute unless score $NextPosition 1v1QueuePosition matches 0 run scoreboard players remove $NextPosition 1v1QueuePosition 2

function sg:lobby/1v1/queue/text_display