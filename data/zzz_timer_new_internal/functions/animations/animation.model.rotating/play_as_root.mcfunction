scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.timer_new.animation.animation.model.rotating.local_anim_time 0
scoreboard players set @s aj.timer_new.animation.animation.model.rotating.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function zzz_timer_new_internal:animations/animation.model.rotating/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.timer_new.animation.animation.model.rotating