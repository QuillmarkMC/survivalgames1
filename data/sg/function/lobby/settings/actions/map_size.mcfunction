#check if any connected settings are at their map size default values BEFORE changing map size
execute if score $MapSize.State lobbySigns = $RestockTime.State lobbySigns run scoreboard players set #RestockCheckTemp lobbySigns 1
execute if score $MapSize.State lobbySigns = $BorderDelay.State lobbySigns run scoreboard players set #DelayCheckTemp lobbySigns 1
execute if score $MapSize.State lobbySigns = $BorderShrink.State lobbySigns run scoreboard players set #ShrinkCheckTemp lobbySigns 1

scoreboard players add $MapSize.State lobbySigns 1
execute unless score $MapSize.State lobbySigns matches 0..2 run scoreboard players set $MapSize.State lobbySigns 0

execute if score $MapSize.State lobbySigns matches 0 run scoreboard players set $MapSize options 0
execute if score $MapSize.State lobbySigns matches 1 run scoreboard players set $MapSize options 1
execute if score $MapSize.State lobbySigns matches 2 run scoreboard players set $MapSize options 2

#keep connected settings at their default values with the new map size
execute if score #RestockCheckTemp lobbySigns matches 1 run scoreboard players operation $RestockTime.State lobbySigns = $MapSize.State lobbySigns
execute if score #DelayCheckTemp lobbySigns matches 1 run scoreboard players operation $BorderDelay.State lobbySigns = $MapSize.State lobbySigns
execute if score #ShrinkCheckTemp lobbySigns matches 1 run scoreboard players operation $BorderShrink.State lobbySigns = $MapSize.State lobbySigns
execute if score #RestockCheckTemp lobbySigns matches 1 run function sg:lobby/settings/actions/restock_time/set_option
execute if score #DelayCheckTemp lobbySigns matches 1 run function sg:lobby/settings/actions/border_delay/set_option
execute if score #ShrinkCheckTemp lobbySigns matches 1 run function sg:lobby/settings/actions/border_shrink/set_option

#reset temp variables
scoreboard players reset #RestockCheckTemp lobbySigns
scoreboard players reset #DelayCheckTemp lobbySigns
scoreboard players reset #ShrinkCheckTemp lobbySigns