#called every tick in lobby/tick.mcfunction by all players in range of team selection chest
scoreboard players set $Temp teams 0

#update chest state upon opening chest
execute if score @s enderClick matches 1.. run function sg:lobby/team_select/inventory/update
#if player drops item directly out of ender chest, reset its inventory
execute if score @s dropBedrock matches 1.. run function sg:lobby/team_select/inventory/update
execute store success score $Temp teams run clear @s bedrock[minecraft:custom_data~{TeamSelect:1}] 0

#automatically update chest inventory every 5 seconds
scoreboard players remove @s teamSelectTimer 1
execute if score @s teamSelectTimer matches ..0 run function sg:lobby/team_select/inventory/update
execute if score @s teamSelectTimer matches ..0 run scoreboard players set @s teamSelectTimer 100

execute if score $Temp teams matches 1.. run tag @s add teamSelectDetect
execute if score $Temp teams matches 1.. run advancement grant @s only sg:inv_changed