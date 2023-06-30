scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.timer_new.export_version dummy
scoreboard objectives add aj.timer_new.rig_loaded dummy
scoreboard objectives add aj.timer_new.animation.animation.model.rotating.local_anim_time dummy
scoreboard objectives add aj.timer_new.animation.animation.model.timer_activate.local_anim_time dummy
scoreboard objectives add aj.timer_new.animation.animation.model.rotating.loop_mode dummy
scoreboard objectives add aj.timer_new.animation.animation.model.timer_activate.loop_mode dummy
scoreboard players set $aj.timer_new.animation.animation.model.rotating aj.id 0
scoreboard players set $aj.timer_new.animation.animation.model.timer_activate aj.id 1
scoreboard players set $aj.timer_new.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.default_interpolation_duration aj.i 1
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.timer_new.export_version aj.i 503840883
scoreboard players reset * aj.timer_new.rig_loaded
execute as @e[type=#timer_new:aj_root,tag=aj.timer_new.root] run function zzz_timer_new_internal:on_load