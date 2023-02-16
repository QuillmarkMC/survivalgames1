scoreboard players remove $Restock timers 1

execute if score $Restock timers matches 60 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The Cornucopia chests will restock in 1 minute!"}]
execute if score $Restock timers matches 60 as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

execute unless score $Restock timers matches ..0 run schedule function sg:game/logic/restock/timer 1s
execute if score $Restock timers matches 0 run function sg:game/generate/chests/restock/restock