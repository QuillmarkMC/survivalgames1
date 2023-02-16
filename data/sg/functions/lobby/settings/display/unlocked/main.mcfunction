setblock -183 17 115 oak_wall_sign[facing=west]{GlowingText:true,Color:"red",Text1:'',Text2:'{"text":"Map","color":"white","bold": false}',Text3:'{"text":"Settings","color":"white","bold": false}',Text4:""}
setblock -183 16 115 oak_wall_sign[facing=west]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1"},"text": ""}',Text2:'{"text":"Start Game","color":"dark_green"}',Text3:'[{"text":"[","color": "white"},{"keybind":"key.use","color":"white"},{"text":"]","color": "white"}]',Text4:""}
function sg:lobby/settings/display/unlocked/team_size
function sg:lobby/settings/display/unlocked/grace_period
function sg:lobby/settings/display/unlocked/restock_type
function sg:lobby/settings/display/unlocked/map_size
function sg:lobby/settings/display/unlocked/border_grace
function sg:lobby/settings/display/unlocked/border_size
function sg:lobby/settings/display/unlocked/border_advance
function sg:lobby/settings/display/unlocked/restock_time
setblock -183 15 115 dark_oak_wall_sign[facing=west]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 3"},"text": ""}',Text2:'{"text":"Lock Settings","color":"yellow"}',Text3:'{"text":"[Admins Only]","color":"white"}',Text4:""}
