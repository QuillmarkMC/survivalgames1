scoreboard players remove $Restock timers 1

execute if score $Restock timers matches 60 if score $RestockType options matches 0 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.chest.restock.cornucopia_soon"}]
execute if score $Restock timers matches 60 if score $RestockType options matches 1 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.chest.restock.all_soon"}]
execute if score $Restock timers matches 60 as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

execute unless score $Restock timers matches ..0 run schedule function sg:game/logic/restock/timer 1s
execute if score $Restock timers matches 0 run function sg:game/generate/chests/restock/restock