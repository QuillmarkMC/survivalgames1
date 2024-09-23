scoreboard players set #CheckTeamsTemp win 1
scoreboard players operation #TeamIDTemp win = @a[tag=SGPlaying,gamemode=!spectator,sort=arbitrary,limit=1] teamID

execute as @a[tag=SGPlaying,gamemode=!spectator] unless score @s teamID = #TeamIDTemp win run scoreboard players set #CheckTeamsTemp win 0

execute if score #CheckTeamsTemp win matches 1 run function sg:game/logic/end/winner