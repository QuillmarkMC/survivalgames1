scoreboard players remove $Heartbeat countdown 1
execute as @a at @s run playsound entity.warden.heartbeat record @s ~ ~ ~ 2
execute if score $Heartbeat countdown matches 1 run schedule function sg:game/starting/heartbeat/beat 10t
execute if score $Heartbeat countdown matches 0 unless score $countdown countdown matches ..0 run schedule function sg:game/starting/heartbeat/beat 30t
execute if score $Heartbeat countdown matches 0 run scoreboard players set $Heartbeat countdown 2