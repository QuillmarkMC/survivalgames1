execute if score $UHC.State lobbySigns matches 0 run setblock -183 15 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1015"},"translate": "text.lobby.settings.signs.uhc1","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.uhc2","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.bool.true","color":"green"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
execute if score $UHC.State lobbySigns matches 1 run setblock -183 15 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1015"},"translate": "text.lobby.settings.signs.uhc1","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.uhc2","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.bool.false","color":"red"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
