execute if score $MapSize.State lobbySigns matches 0 run setblock -183 16 117 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1013"},"text": ""}', '{"translate":"text.lobby.settings.signs.map_size","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.map_size.large1","color":"green"}', '{"translate":"text.lobby.settings.signs.map_size.large2","color":"gold"}'], has_glowing_text: true, color: "gray"}}
execute if score $MapSize.State lobbySigns matches 1 run setblock -183 16 117 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1013"},"text": ""}', '{"translate":"text.lobby.settings.signs.map_size","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.map_size.medium1","color":"red"}', '{"translate":"text.lobby.settings.signs.map_size.medium2","color":"gold"}'], has_glowing_text: true, color: "gray"}}
execute if score $MapSize.State lobbySigns matches 2 run setblock -183 16 117 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1013"},"text": ""}', '{"translate":"text.lobby.settings.signs.map_size","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.map_size.small1","color":"red"}', '{"translate":"text.lobby.settings.signs.map_size.small2","color":"gold"}'], has_glowing_text: true, color: "gray"}}
