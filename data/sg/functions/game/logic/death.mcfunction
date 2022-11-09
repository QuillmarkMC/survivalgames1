title @s title {"color":"dark_red","text":"YOU DIED"}
execute as @s run playsound minecraft:entity.warden.death master @s ~ ~ ~ 1 0.75
function sg:game/join_spectator
function sg:game/logic/check_for_win