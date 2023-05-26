#say general/player/inventory_update

#team select
execute if score $state gamestate = $lobby gamestate if entity @s[tag=teamSelectDetect] run function sg:lobby/team_select/determine_click

#lobby arena
#execute if score $state gamestate = $lobby gamestate if entity @s[tag=SGArenaFighter] run function sg:lobby/arena/inventory
#execute if score $state gamestate = $lobby gamestate unless entity @s[tag=SGArenaFighter] run clear @s
execute if score $state gamestate = $lobby gamestate if score @s inventoryState = $Lobby.Default inventoryState run function sg:lobby/inventory/refresh
execute if score $state gamestate = $lobby gamestate if score @s inventoryState = $Lobby.ArenaFighter inventoryState run function sg:lobby/arena/inventory
execute if score $state gamestate = $lobby gamestate if score @s inventoryState = $Lobby.Archery inventoryState run function sg:lobby/archery/inventory/check_state

tag @s remove teamSelectDetect
advancement revoke @s only sg:inv_changed