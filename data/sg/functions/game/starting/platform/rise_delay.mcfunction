#delay platform movement by 2 ticks to prevent levitation bugs
scoreboard players remove $PlatformRise spawning 1
execute as @e[type=armor_stand,tag=SGPlatform] at @s run tp ~ ~0.09 ~

execute unless score $PlatformRise spawning matches ..0 run schedule function sg:game/starting/platform/rise_delay 1t
execute if score $PlatformRise spawning matches ..0 run function sg:game/starting/platform/rise_end