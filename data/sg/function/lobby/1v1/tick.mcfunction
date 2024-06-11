execute if score $Arena1State 1v1Var matches 1 run function sg:lobby/1v1/arena1/spectate/tick
execute if score $Arena1State 1v1Var matches 2 run function sg:lobby/1v1/arena1/countdown/tick
execute if score $Arena1State 1v1Var matches 3 run function sg:lobby/1v1/arena1/tick

execute if score $Arena2State 1v1Var matches 1 run function sg:lobby/1v1/arena2/spectate/tick
execute if score $Arena2State 1v1Var matches 2 run function sg:lobby/1v1/arena2/countdown/tick
execute if score $Arena2State 1v1Var matches 3 run function sg:lobby/1v1/arena2/tick

execute as @a[scores={1v1QueuePosition=0..},predicate=!sg:lobby/1v1_queue_waiting] run function sg:lobby/1v1/queue/leave
execute as @a[scores={1v1QueuePosition=0..},predicate=sg:lobby/1v1_queue_waiting] run function sg:lobby/1v1/queue/display
execute as @a[predicate=sg:lobby/1v1_queue] run function sg:lobby/1v1/queue/enter
function sg:lobby/1v1/queue/arbitrary_update