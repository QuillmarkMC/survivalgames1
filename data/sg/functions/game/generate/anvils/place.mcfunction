#summon anvil markers
function sg:game/generate/anvils/summon
say summon all anvils
#place anvils at markers
execute at @e[type=marker,tag=SGAnvil] run setblock ~ ~ ~ air
execute at @e[type=marker,tag=SGAnvilNorth] run setblock ~ ~ ~ anvil[facing=north]
execute at @e[type=marker,tag=SGAnvilEast] run setblock ~ ~ ~ anvil[facing=east]