#check a reconnecting player if they are in this game session
scoreboard players set @s leave 0
#if player has combatTimer score > 0

execute unless score @s matchID = $Global matchID run tag @s add SGResetPlayer
execute unless score $state gamestate = $game gamestate run tag @s add SGResetPlayer
execute if entity @s[team=Spectator] run tag @s add SGResetPlayer
