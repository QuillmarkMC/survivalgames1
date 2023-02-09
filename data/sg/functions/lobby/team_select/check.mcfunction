#called every tick in lobby/tick.mcfunction by all players in range of team selection chest
scoreboard players set $Temp teams 0

#reset chest state upon opening chest
#execute if score @s enderClick matches 1.. run function pudge:game/shop/inventory/states/main
#if player drops item directly out of ender chest, reset its inventory
execute if score @s dropBedrock matches 1.. run function sg:lobby/team_select/inventory/update
execute store success score $Temp teams run clear @s bedrock{TeamSelect:1} 0
execute if score $Temp teams matches 1.. run tag @s remove teamSelectDetect
execute if score $Temp teams matches 1.. run advancement grant @s only sg:inv_changed