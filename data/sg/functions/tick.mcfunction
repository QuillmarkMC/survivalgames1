#handle leavers
execute as @a[scores={leave=1..}] run function sg:general/player/check_dc

#handle player resets
execute as @a[tag=!SGInitSpawned] run tag @s add SGResetPlayer
execute as @a[tag=SGResetPlayer] run function sg:general/player/reset

#State 0 = lobby, 1 = game
execute if score $state gamestate = $lobby gamestate run function sg:lobby/tick
execute if score $state gamestate = $game gamestate run function sg:game/tick

#arrow rotation
execute as @e[tag=map_arrow] at @s run tp @s ~ ~ ~ ~3 ~

#survival mode safety check
execute as @a[gamemode=survival,tag=!Bypass_Safety] run function sg:general/safety/survival