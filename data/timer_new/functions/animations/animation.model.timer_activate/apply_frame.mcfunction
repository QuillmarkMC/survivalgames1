execute if entity @s[tag=aj.timer_new.root] run function zzz_timer_new_internal:animations/animation.model.timer_activate/apply_frame_as_root
execute if entity @s[tag=!aj.timer_new.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" timer_new:animations/animation.model.timer_activate/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]