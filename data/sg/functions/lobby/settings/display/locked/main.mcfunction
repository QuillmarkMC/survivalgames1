setblock -183 17 115 dark_oak_wall_sign[facing=west]{GlowingText:true,Color:"red",Text1:'',Text2:'{"text":"Map","color":"white","bold": false}',Text3:'{"text":"Settings","color":"white","bold": false}',Text4:""}
setblock -183 16 115 dark_oak_wall_sign[facing=west]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1001"},"text": ""}',Text2:'{"text":"Start Game","color":"dark_green"}',Text3:'[{"text":"[","color": "white"},{"keybind":"key.use","color":"white"},{"text":"]","color": "white"}]',Text4:""}
function sg:lobby/settings/display/locked/team_size
function sg:lobby/settings/display/locked/grace_period
function sg:lobby/settings/display/locked/restock_type
function sg:lobby/settings/display/locked/map_size
function sg:lobby/settings/display/locked/border_grace
function sg:lobby/settings/display/locked/border_size
function sg:lobby/settings/display/locked/border_advance
function sg:lobby/settings/display/locked/restock_time
setblock -183 15 115 oak_wall_sign[facing=west]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1004"},"text": ""}',Text2:'{"text":"Unlock Settings","color":"yellow"}',Text3:'{"text":"[Admins Only]","color":"white"}',Text4:""}
