fill ~ ~ ~ ~107 ~ ~76 air replace lava
scoreboard players add $TempleResetLevel temple 1
execute unless score $TempleResetLevel temple matches 39.. positioned ~ ~1 ~ run function sg:game/logic/temple/reset/loop