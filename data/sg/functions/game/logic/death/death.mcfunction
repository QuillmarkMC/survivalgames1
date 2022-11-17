execute store result score $RemainingPlayers win if entity @a[tag=SGPlaying]

title @s times 5 60 20
title @s subtitle [{"text": ""},{"text": "Your position: ","color": "white"},{"score":{"name":"$RemainingPlayers","objective":"win"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @s title {"color":"dark_red","text":"You Died."}

scoreboard players set @s combatTimer 0

function sg:game/spawning/spectator/join
function sg:game/logic/death/location
execute at @s run function sg:game/logic/lightning/summon
execute at @s run playsound entity.elder_guardian.curse record @s ~ ~ ~ 1 0.5
function sg:game/logic/check_for_win