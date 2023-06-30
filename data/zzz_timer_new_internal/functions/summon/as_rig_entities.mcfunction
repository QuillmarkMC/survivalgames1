scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #timer_new:on_summon_as_rig_entities
execute if entity @s[tag=aj.timer_new.bone] run function zzz_timer_new_internal:summon/as_bones
execute if entity @s[tag=aj.timer_new.locator] run function zzz_timer_new_internal:summon/as_locators
execute if entity @s[tag=aj.timer_new.camera] run function zzz_timer_new_internal:summon/as_cameras