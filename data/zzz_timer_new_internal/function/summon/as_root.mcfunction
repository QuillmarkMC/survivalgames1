execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.timer_new.rig_loaded 1
scoreboard players operation @s aj.timer_new.export_version = aj.timer_new.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function zzz_timer_new_internal:summon/as_rig_entities
execute if score #variant aj.i = $aj.timer_new.variant.default aj.id run function zzz_timer_new_internal:apply_variant/default_as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.timer_new.animation.animation.model.timer_activate aj.id run function zzz_timer_new_internal:animations/animation.model.timer_activate/apply_frame_as_root
execute if score #animation aj.i = $aj.timer_new.animation.animation.model.timer_activate aj.id run scoreboard players operation @s aj.timer_new.animation.animation.model.timer_activate.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.timer_new.animation.animation.model.rotating aj.id run function zzz_timer_new_internal:animations/animation.model.rotating/apply_frame_as_root
execute if score #animation aj.i = $aj.timer_new.animation.animation.model.rotating aj.id run scoreboard players operation @s aj.timer_new.animation.animation.model.rotating.local_anim_time = #frame aj.i
execute at @s run function #timer_new:on_summon_as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i