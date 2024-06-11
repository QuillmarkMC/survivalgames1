scoreboard players remove $FireworkFanfare win 1
execute as @a[tag=WinnerWinnerChickenDinner] at @s run function sg:game/logic/end/fireworks/summon
execute if score $FireworkFanfare win matches 1.. run schedule function sg:game/logic/end/fireworks/schedule 1s