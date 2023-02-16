#called when the settings board's display needs to be updated after a change
fill -183 18 111 -183 15 119 air
execute if score $Locked lobbySigns matches 0 run function sg:lobby/settings/display/unlocked/main
execute if score $Locked lobbySigns matches 1 run function sg:lobby/settings/display/locked/main