execute at @e[type=marker,tag=SGTempleFloodMarker,limit=1] run fill ~ ~ ~ ~107 ~ ~65 lava replace air
execute as @e[type=marker,tag=SGTempleFloodMarker,limit=1] at @s run tp ~ ~1 ~
execute unless entity @e[type=marker,tag=SGTempleFloodMarker,limit=1,y=86] run schedule function sg:game/logic/temple/flood/loop 5s
execute if entity @e[type=marker,tag=SGTempleFloodMarker,limit=1,y=86] run function sg:game/logic/temple/flood/end