setblock -183 17 115 dark_oak_wall_sign[facing=west]{front_text:{messages:[{"text":""}, {"translate":"text.lobby.settings.signs.title1","color":"white","bold": false}, {"translate":"text.lobby.settings.signs.title2","color":"white","bold": false}, {"text":""}], has_glowing_text: true, color: "red"}}
setblock -183 16 115 dark_oak_wall_sign[facing=west]{front_text:{messages:[{"click_event":{"action":"run_command","command": "/trigger lobbySigns set 1001"},"text": ""}, {"translate":"text.lobby.settings.signs.start","color":"dark_green"}, [{"text":"[","color": "white"},{"keybind":"key.use","color":"white"},{"text":"]","color": "white"}], {"text":""}], has_glowing_text: true, color: "blue"}}
function sg:lobby/settings/display/locked/team_size
function sg:lobby/settings/display/locked/grace_period
function sg:lobby/settings/display/locked/restock_type
function sg:lobby/settings/display/locked/map_size
function sg:lobby/settings/display/locked/border_grace
function sg:lobby/settings/display/locked/border_size
function sg:lobby/settings/display/locked/border_advance
function sg:lobby/settings/display/locked/restock_time
function sg:lobby/settings/display/locked/loot_mode
function sg:lobby/settings/display/locked/uhc
setblock -183 15 115 oak_wall_sign[facing=west]{front_text:{messages:[{"click_event":{"action":"run_command","command": "/trigger lobbySigns set 1004"},"text": ""}, {"translate":"text.lobby.settings.signs.unlock","color":"yellow"}, {"translate":"text.lobby.settings.signs.admin","color":"white"}, {"text":""}], has_glowing_text: true, color: "blue"}}
