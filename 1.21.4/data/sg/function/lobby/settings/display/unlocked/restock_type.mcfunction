execute if score $RestockType.State lobbySigns matches 0 run setblock -183 16 111 oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 12"},"text": ""}', '{"translate":"text.lobby.settings.signs.restock.type","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.restock.type.0","color":"green"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
execute if score $RestockType.State lobbySigns matches 1 run setblock -183 16 111 oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 12"},"text": ""}', '{"translate":"text.lobby.settings.signs.restock.type","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.restock.type.1","color":"red"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
execute if score $RestockType.State lobbySigns matches 2 run setblock -183 16 111 oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 12"},"text": ""}', '{"translate":"text.lobby.settings.signs.restock.type","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.restock.type.2","color":"red"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
