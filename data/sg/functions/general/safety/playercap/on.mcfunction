scoreboard players set $EnforcePlayerCap var 1
tellraw @s [{"text": ""},{"text":"[!] ","color":"green","bold": true},{"translate":"text.safety.playercap.on"}]
execute at @s run playsound entity.experience_orb.pickup record @s
