execute if score $MapSize.State lobbySigns matches 0 run setblock -183 16 118 spruce_wall_sign[facing=west]{front_text:{messages:['{"translate":"text.lobby.settings.signs.border","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.starting_size","color":"light_purple"}', '{"text":"1000","color":"green"}', '{"translate":"text.lobby.settings.signs.blocks","color":"gold"}'], has_glowing_text: true, color: "gray"}}
execute if score $MapSize.State lobbySigns matches 1 run setblock -183 16 118 spruce_wall_sign[facing=west]{front_text:{messages:['{"translate":"text.lobby.settings.signs.border","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.starting_size","color":"light_purple"}', '{"text":"750","color":"red"}', '{"translate":"text.lobby.settings.signs.blocks","color":"gold"}'], has_glowing_text: true, color: "gray"}}
execute if score $MapSize.State lobbySigns matches 2 run setblock -183 16 118 spruce_wall_sign[facing=west]{front_text:{messages:['{"translate":"text.lobby.settings.signs.border","color":"light_purple"}', '{"translate":"text.lobby.settings.signs.starting_size","color":"light_purple"}', '{"text":"500","color":"red"}', '{"translate":"text.lobby.settings.signs.blocks","color":"gold"}'], has_glowing_text: true, color: "gray"}}
