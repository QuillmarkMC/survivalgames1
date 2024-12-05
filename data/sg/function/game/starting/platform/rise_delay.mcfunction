#delay platform movement by 2 ticks to prevent levitation bugs
scoreboard players remove $PlatformRise spawning 1
execute as @e[type=armor_stand,tag=SGPlatform] at @s run tp ~ ~0.045 ~
execute as @a[tag=SGPlaying] at @s run ride @s mount @e[type=armor_stand,sort=nearest,tag=SGPlatformRide,limit=1]
execute as @a[tag=SGPlaying] run title @s actionbar ""

execute if score $StartMusic options matches 1 if score $PlatformRise spawning matches 37 run function sg:game/starting/countdown_music

execute unless score $PlatformRise spawning matches ..0 run schedule function sg:game/starting/platform/rise_delay 1t
execute if score $PlatformRise spawning matches ..0 run function sg:game/starting/platform/rise_end