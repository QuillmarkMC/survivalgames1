tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"text":"Times up! The game has ended in a draw.","color": "white","bold": false}]

title @a times 5 120 20
#alive players
title @a[gamemode=adventure] subtitle [{"text": ""},{"text": "Your position: ","color": "white"},{"text":"?","color": "red"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
#dead players
execute as @a[gamemode=!adventure,tag=SGPlaying] run title @s subtitle [{"text": ""},{"text": "Your position: ","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=!SGPlaying] subtitle ""
title @a title {"color":"red","text":"Game Over"}

execute as @a at @s run playsound ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5

effect give @a[gamemode=adventure] resistance infinite 10 true

scoreboard players set $Timer border -1
schedule function sg:game/logic/end/transition 160t