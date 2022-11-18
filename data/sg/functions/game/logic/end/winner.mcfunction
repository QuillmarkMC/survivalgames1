tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"text":"Congratulations to ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=WinnerWinnerChickenDinner]"}],"bold": false},{"text": "!","bold": false}]
#function sg:game/unload

#winners
title @a[tag=WinnerWinnerChickenDinner] times 5 120 20
title @a[tag=WinnerWinnerChickenDinner] subtitle [{"text": ""},{"text": "Your position: ","color": "white"},{"text":"1","color": "gold"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=WinnerWinnerChickenDinner] title {"color":"#F3DD4F","text":"Victory Royale!","bold": true}
#not winners
title @a[tag=!WinnerWinnerChickenDinner] times 5 120 20
title @a[tag=!WinnerWinnerChickenDinner] subtitle [{"text": ""},{"text": "Your position: ","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=!WinnerWinnerChickenDinner] title {"color":"red","text":"Game Over"}

scoreboard players operation $FireworkFanfare win = $end_firework_total options
function sg:game/logic/end/fireworks/schedule

schedule function sg:game/logic/end/transition 160t