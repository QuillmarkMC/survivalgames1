tag @s remove Bypass_Safety
tellraw @s [{"text": ""},{"text":"[!] ","color":"green","bold": true},{"translate":"text.safety.bypass.revoke"}]
execute at @s run playsound entity.experience_orb.pickup record @s
