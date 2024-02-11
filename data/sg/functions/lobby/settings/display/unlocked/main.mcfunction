setblock -183 17 115 oak_wall_sign[facing=west]{front_text:{messages:['{"text":""}', '{"translate":"text.lobby.settings.signs.title1","color":"white","bold": false}', '{"translate":"text.lobby.settings.signs.title2","color":"white","bold": false}', '{"text":""}'], has_glowing_text: true, color: "red"}}
setblock -183 16 115 oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1"},"text": ""}', '{"translate":"text.lobby.settings.signs.start","color":"dark_green"}', '[{"text":"[","color": "white"},{"keybind":"key.use","color":"white"},{"text":"]","color": "white"}]', '{"text":""}'], has_glowing_text: true, color: "blue"}}
function sg:lobby/settings/display/unlocked/team_size
function sg:lobby/settings/display/unlocked/grace_period
function sg:lobby/settings/display/unlocked/restock_type
function sg:lobby/settings/display/unlocked/map_size
function sg:lobby/settings/display/unlocked/border_grace
function sg:lobby/settings/display/unlocked/border_size
function sg:lobby/settings/display/unlocked/border_advance
function sg:lobby/settings/display/unlocked/restock_time
function sg:lobby/settings/display/unlocked/loot_mode
function sg:lobby/settings/display/unlocked/uhc
setblock -183 15 115 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 3"},"text": ""}', '{"translate":"text.lobby.settings.signs.lock","color":"yellow"}', '{"translate":"text.lobby.settings.signs.admin","color":"white"}', '{"text":""}'], has_glowing_text: true, color: "blue"}}
