kill @e[type=marker,tag=SGArcheryZombieSpawn]
kill @e[type=armor_stand,tag=SGArcherySeat]
#summon markers for zombie spawn points
summon marker -239 20 188 {Tags:["SGArcheryZombieSpawn"]}
summon marker -244 20 186 {Tags:["SGArcheryZombieSpawn"]}
summon marker -252 20 186 {Tags:["SGArcheryZombieSpawn"]}
summon marker -248 18 179 {Tags:["SGArcheryZombieSpawn"]}
summon marker -250 15 183 {Tags:["SGArcheryZombieSpawn"]}
summon marker -246 15 187 {Tags:["SGArcheryZombieSpawn"]}
summon marker -255 15 186 {Tags:["SGArcheryZombieSpawn"]}
summon marker -252 15 176 {Tags:["SGArcheryZombieSpawn"]}
summon marker -254 15 173 {Tags:["SGArcheryZombieSpawn"]}
summon marker -247 15 173 {Tags:["SGArcheryZombieSpawn"]}
summon marker -239 21 172 {Tags:["SGArcheryZombieSpawn"]}
summon marker -248 21 173 {Tags:["SGArcheryZombieSpawn"]}
summon marker -255 21 176 {Tags:["SGArcheryZombieSpawn"]}
scoreboard players set @e[type=marker,tag=SGArcheryZombieSpawn] archeryZombieSpawnDelay 0

#summon armor stand to be ridden
summon armor_stand -238.5 13.8 180.5 {Tags:["SGArcherySeat"],Rotation:[90.0f,0.0f],NoGravity:true,Invulnerable:true}

#end game and reset queue
execute as @a[tag=SGArcheryPlayer] run function sg:lobby/archery/end
execute as @a[scores={archeryQueuePosition=1..}] run function sg:lobby/archery/queue/leave

#reset queue
scoreboard players set $NextPosition archeryQueuePosition 0
kill @e[type=marker,tag=SGArcheryQueueSpawn]
summon marker -238.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -239.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -240.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -244.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -245.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -246.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -250.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -251.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}
summon marker -252.5 16.0 169.5 {Tags:["SGArcheryQueueSpawn"],Rotation:[0.0f,0.0f]}

#text display
kill @e[type=text_display,tag=SGArcheryQueueDisplay]
summon text_display -231.5 17.5 165.5 {Tags:["SGArcheryQueueDisplay"],alignment:"center",text:"",billboard:"center",background:0}
function sg:lobby/archery/queue/text_display

execute unless score $Global archeryHighscore matches 0.. run scoreboard players set $Global archeryHighscore 0

execute unless score $Global archeryRecord matches 1.. run scoreboard players set $Global archeryRecord 0
scoreboard players set $MaxLength archeryVar 60
scoreboard players set $Timer archeryVar -1

bossbar add archery ""
bossbar set archery visible true
bossbar set archery color yellow
execute store result bossbar archery max run scoreboard players get $MaxLength archeryVar