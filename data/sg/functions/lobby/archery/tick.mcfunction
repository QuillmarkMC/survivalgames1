ride @a[tag=SGArcheryPlayer,limit=1] mount @e[type=armor_stand,tag=SGArcherySeat,limit=1]
#check for dc'd player
execute unless entity @a[tag=SGArcheryPlayer,limit=1] run function sg:lobby/archery/end

execute as @a[scores={archeryQueuePosition=0..},predicate=!sg:lobby/archery_queue_waiting] run function sg:lobby/archery/queue/leave
execute as @a[scores={archeryQueuePosition=0..},predicate=sg:lobby/archery_queue_waiting] run function sg:lobby/archery/queue/display
execute as @a[predicate=sg:lobby/archery_queue] run function sg:lobby/archery/queue/enter