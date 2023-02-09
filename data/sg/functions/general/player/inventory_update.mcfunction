#team select
execute if entity @s[tag=teamSelectDetect] run function sg:lobby/team_select/determine_click

execute if score $state gamestate = $lobby gamestate run function sg:lobby/inventory/refresh

tag @s remove teamSelectDetect
advancement revoke @s only sg:inv_changed