tag @a[tag=SGPlaying,gamemode=adventure] add WinnerWinnerChickenDinner
#tag winners to get VIP lobby access, persists through resets
tag @a[tag=WinnerWinnerChickenDinner] add VictoryRoyale

tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.congrats","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=WinnerWinnerChickenDinner]"}],"bold": false},{"text": "!","bold": false}]

title @a times 5 120 20
#winners
title @a[tag=WinnerWinnerChickenDinner] subtitle [{"text": ""},{"translate": "text.game.death.subtitle","color": "white"},{"text":"1","color": "gold"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=WinnerWinnerChickenDinner] title {"color":"#F3DD4F","translate":"text.game.death.title3","bold": true}
#not winners
execute as @a[tag=!WinnerWinnerChickenDinner,tag=SGPlaying] run title @s subtitle [{"text": ""},{"translate": "text.game.death.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=!SGPlaying] subtitle ""
title @a[tag=!WinnerWinnerChickenDinner] title {"color":"red","translate":"text.game.death.title2"}

scoreboard players operation $FireworkFanfare win = $end_firework_total options
function sg:game/logic/end/fireworks/schedule
execute as @a at @s run playsound ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5

effect give @a[tag=WinnerWinnerChickenDinner] resistance infinite 10 true

schedule function sg:game/logic/end/transition 160t
schedule clear sg:game/logic/border/update