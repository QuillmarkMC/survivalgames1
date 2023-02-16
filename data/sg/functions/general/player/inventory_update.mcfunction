#say general/player/inventory_update

#team select
execute if score $state gamestate = $lobby gamestate if entity @s[tag=teamSelectDetect] run function sg:lobby/team_select/determine_click

#lobby arena
execute if score $state gamestate = $lobby gamestate if entity @s[tag=SGArenaFighter] run function sg:lobby/arena/inventory
execute if score $state gamestate = $lobby gamestate unless entity @s[tag=SGArenaFighter] run clear @s

tag @s remove teamSelectDetect
advancement revoke @s only sg:inv_changed