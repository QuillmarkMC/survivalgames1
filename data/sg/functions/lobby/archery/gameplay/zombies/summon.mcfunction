scoreboard players set @s archeryZombieSpawnDelay 6
summon zombified_piglin ~ ~ ~ {Tags:["SGArcheryTarget","SGNewArcheryTarget"],Attributes:[{Name:"generic.follow_range",Base:100},{Name:"generic.max_health",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:999999,ShowParticles:false}],Health:5,AngerTime:999999}
data modify entity @e[tag=SGNewArcheryTarget,type=zombified_piglin,limit=1] AngryAt set from entity @a[tag=SGArcheryPlayer,limit=1] UUID

tag @e[tag=SGNewArcheryTarget,type=zombified_piglin,limit=1] remove SGNewArcheryTarget