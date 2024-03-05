#updates the custom model world border for the lobby map
kill @e[type=block_display,tag=SGLobbyMapBorder]

execute if score $MapSize.State lobbySigns matches 0 positioned -219.21 11.0703125 115.40 run summon block_display ~-3.90625 ~ ~-3.90625 {Tags:["SGLobbyMapBorder"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[7.8125f,1f,7.8125f]},block_state:{Name:"minecraft:magenta_stained_glass"}}
execute if score $MapSize.State lobbySigns matches 1 positioned -219.21 11.0703125 115.40 run summon block_display ~-2.9296875 ~ ~-2.9296875 {Tags:["SGLobbyMapBorder"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.859375f,1f,5.859375f]},block_state:{Name:"minecraft:magenta_stained_glass"}}
execute if score $MapSize.State lobbySigns matches 2 positioned -219.21 11.0703125 115.40 run summon block_display ~-1.953125 ~ ~-1.953125 {Tags:["SGLobbyMapBorder"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3.90625f,1f,3.90625f]},block_state:{Name:"minecraft:magenta_stained_glass"}}
