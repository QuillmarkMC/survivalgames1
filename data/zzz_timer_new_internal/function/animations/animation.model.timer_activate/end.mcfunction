execute if score @s aj.timer_new.animation.animation.model.timer_activate.loop_mode = $aj.loop_mode.loop aj.i run function zzz_timer_new_internal:animations/animation.model.timer_activate/end_loop
execute if score @s aj.timer_new.animation.animation.model.timer_activate.loop_mode = $aj.loop_mode.once aj.i run function timer_new:animations/animation.model.timer_activate/stop
execute if score @s aj.timer_new.animation.animation.model.timer_activate.loop_mode = $aj.loop_mode.hold aj.i run function timer_new:animations/animation.model.timer_activate/pause