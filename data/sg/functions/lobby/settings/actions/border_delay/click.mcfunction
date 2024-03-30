scoreboard players add $BorderDelay.State lobbySigns 1
execute unless score $BorderDelay.State lobbySigns matches 0..7 run scoreboard players set $BorderDelay.State lobbySigns 0

function sg:lobby/settings/actions/border_delay/set_option