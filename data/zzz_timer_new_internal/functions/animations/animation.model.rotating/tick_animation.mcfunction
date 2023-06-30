scoreboard players add @s aj.timer_new.animation.animation.model.rotating.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.timer_new.animation.animation.model.rotating.local_anim_time
function zzz_timer_new_internal:animations/animation.model.rotating/apply_frame_as_root
execute if score @s aj.timer_new.animation.animation.model.rotating.local_anim_time matches 200.. run function zzz_timer_new_internal:animations/animation.model.rotating/end