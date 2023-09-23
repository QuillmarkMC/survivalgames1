scoreboard players remove $countdown countdown 1
execute if score $countdown countdown matches 2 run scoreboard players set $Piston countdown 3
execute if score $countdown countdown matches 2 run function sg:game/starting/platform/piston
execute if score $countdown countdown matches 0.. run schedule function sg:game/starting/platform/delay_start 1s replace
execute if score $countdown countdown matches 0 run function sg:game/starting/platform/rise