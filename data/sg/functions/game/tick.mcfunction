#Death check
execute as @a if score @s death matches 1.. run function sg:game/logic/death
execute as @a if score @s death matches 1.. run scoreboard players set @s death 0

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/logic/check_for_win