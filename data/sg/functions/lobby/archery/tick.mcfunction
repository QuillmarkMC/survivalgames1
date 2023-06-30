execute if score $GameInProgress archeryVar matches 1 run ride @a[tag=SGArcheryPlayer,limit=1] mount @e[type=armor_stand,tag=SGArcherySeat,limit=1]
title @a[tag=SGArcheryPlayer,limit=1] actionbar ""
#check for dc'd player
execute if score $GameInProgress archeryVar matches 1 unless entity @a[tag=SGArcheryPlayer,limit=1] run function sg:lobby/archery/end

execute as @a[scores={archeryQueuePosition=0..},predicate=!sg:lobby/archery_queue_waiting] run function sg:lobby/archery/queue/leave
execute as @a[scores={archeryQueuePosition=0..},predicate=sg:lobby/archery_queue_waiting] run function sg:lobby/archery/queue/display
execute as @a[predicate=sg:lobby/archery_queue] run function sg:lobby/archery/queue/enter
function sg:lobby/archery/queue/arbitrary_update