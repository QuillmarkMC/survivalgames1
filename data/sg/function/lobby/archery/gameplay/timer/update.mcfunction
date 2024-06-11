scoreboard players remove $Timer archeryVar 1
function sg:lobby/archery/gameplay/zombies/check_spawn
function sg:lobby/archery/gameplay/timer/display
execute if score $Timer archeryVar matches 1.. run schedule function sg:lobby/archery/gameplay/timer/update 1s
execute if score $Timer archeryVar matches ..0 as @a[tag=SGArcheryPlayer,limit=1] run function sg:lobby/archery/end