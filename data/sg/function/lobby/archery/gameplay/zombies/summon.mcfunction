scoreboard players set @s archeryZombieSpawnDelay 6
summon zombified_piglin ~ ~ ~ {Tags:["SGArcheryTarget","SGNewArcheryTarget"],attributes:[{id:"follow_range",base:100},{id:"max_health",base:5}],active_effects:[{id:"minecraft:speed",amplifier:0b,duration:-1,show_particles:0b}],Health:5,anger_end_tine:999999}
data modify entity @e[tag=SGNewArcheryTarget,type=zombified_piglin,limit=1] angry_at set from entity @a[tag=SGArcheryPlayer,limit=1] UUID

tag @e[tag=SGNewArcheryTarget,type=zombified_piglin,limit=1] remove SGNewArcheryTarget