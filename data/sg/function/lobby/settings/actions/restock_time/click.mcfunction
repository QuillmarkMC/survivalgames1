scoreboard players add $RestockTime.State lobbySigns 1
execute unless score $RestockTime.State lobbySigns matches 0..8 run scoreboard players set $RestockTime.State lobbySigns 0

function sg:lobby/settings/actions/restock_time/set_option