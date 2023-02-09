say general/player/inventory_update

#team select
execute if score $state gamestate = $lobby gamestate if entity @s[tag=teamSelectDetect] run function sg:lobby/team_select/determine_click

#execute if score $state gamestate = $lobby gamestate run function sg:lobby/inventory/refresh

tag @s remove teamSelectDetect
advancement revoke @s only sg:inv_changed