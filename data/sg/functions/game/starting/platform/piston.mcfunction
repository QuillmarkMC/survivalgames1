scoreboard players remove $Piston countdown 1
execute if score $Piston countdown matches 2 as @a[tag=SGPlaying] at @s run playsound block.piston.extend record @s ~ ~ ~ 0.75 0.8
execute if score $Piston countdown matches 1 as @a[tag=SGPlaying] at @s run playsound block.piston.contract record @s ~ ~ ~ 0.75 0.7
execute if score $Piston countdown matches 0 as @a[tag=SGPlaying] at @s run playsound block.piston.contract record @s ~ ~ ~ 0.75 0.7
execute if score $Piston countdown matches 1.. run schedule function sg:game/starting/platform/piston 8t
