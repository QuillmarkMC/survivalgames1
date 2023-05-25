tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"GG! You got a score of ","color":"white"},{"score":{"name":"$CurrentScore","objective":"archeryVar"},"color":"gold"},{"text": "!","color": "gold"}]
scoreboard players set $Countdown archeryVar -1
execute if score $CurrentScore archeryVar > @s archeryHighscore run function sg:lobby/archery/gameplay/scores/personal_best
tp @s -229.5 15.0 180.5 90.0 6.5
kill @e[type=zombified_piglin,tag=SGArcheryTarget]

#inventory
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
advancement grant @s only sg:inv_changed

tag @s remove SGArcheryPlayer
bossbar set archery players
schedule clear sg:lobby/archery/gameplay/timer/update

function sg:lobby/archery/queue/advance
advancement revoke @s only sg:lobby/archery_lose