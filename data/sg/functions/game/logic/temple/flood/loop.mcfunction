execute at @e[type=marker,tag=SGTempleFloodMarker,limit=1] run fill ~ ~ ~ ~107 ~ ~65 lava replace air
execute as @e[type=marker,tag=SGTempleFloodMarker,limit=1] at @s run tp ~ ~1 ~
scoreboard players add $FloodLevel temple 1
execute if score $FloodLevel temple matches ..38 run schedule function sg:game/logic/temple/flood/loop 5s
execute if score $FloodLevel temple matches 39.. run function sg:game/logic/temple/flood/end
