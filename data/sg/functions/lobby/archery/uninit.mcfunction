#kill markers and armor stand
kill @e[type=marker,tag=SGArcheryZombieSpawn]
kill @e[type=armor_stand,tag=SGArcherySeat]
kill @e[type=marker,tag=SGArcheryQueueSpawn]
kill @e[type=text_display,tag=SGArcheryQueueDisplay]
execute as @a[scores={archeryQueuePosition=0..}] run function sg:lobby/archery/queue/leave
function sg:lobby/archery/end