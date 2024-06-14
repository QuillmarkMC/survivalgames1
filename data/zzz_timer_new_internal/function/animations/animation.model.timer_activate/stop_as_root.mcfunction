scoreboard players set @s aj.timer_new.animation.animation.model.timer_activate.local_anim_time 0
tag @s remove aj.timer_new.animation.animation.model.timer_activate
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.timer_new.disable_command_keyframes
function zzz_timer_new_internal:animations/animation.model.timer_activate/tree/leaf_0
tag @s remove aj.timer_new.disable_command_keyframes