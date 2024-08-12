execute store result score $RemainingPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation @s playerPosition = $RemainingPlayers win

title @s times 5 60 20
title @s subtitle [{"text": ""},{"translate": "text.game.death.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @s title {"color":"dark_red","translate":"text.game.death.title"}

scoreboard players set @s combatTimer 0
tag @s add SGDeadPlayer

function sg:game/spawning/spectator/join
#function sg:game/logic/death/location
scoreboard players set @s deathDelayTimer 1
#execute at @s run function sg:game/logic/lightning/summon
#execute at @s run playsound entity.wither.death record @s ~ ~ ~ 1 1
function sg:game/logic/check_win/check
scoreboard players set @s death 0