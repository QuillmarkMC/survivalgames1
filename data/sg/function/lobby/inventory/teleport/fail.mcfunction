scoreboard players operation $Num1 math = $Cooldown adminTeleportCooldown
scoreboard players operation $Num1 math /= #20 math
tellraw @s [{"text": ""},{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.teleporter.cooldown1"},{"score":{"name":"$Num1","objective":"math"}},{"translate":"text.lobby.teleporter.cooldown2"}]
execute at @s run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5