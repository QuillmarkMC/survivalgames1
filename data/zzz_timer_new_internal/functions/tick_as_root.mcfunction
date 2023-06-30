execute unless score @s aj.timer_new.rig_loaded matches 1 run function zzz_timer_new_internal:on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #timer_new:on_tick
function zzz_timer_new_internal:animations/tick