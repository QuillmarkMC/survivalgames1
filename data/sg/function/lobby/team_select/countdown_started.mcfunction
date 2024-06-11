function sg:lobby/team_select/reset_temp_var
tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.team_select.error.game_start"}]
