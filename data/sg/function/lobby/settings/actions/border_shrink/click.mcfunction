scoreboard players add $BorderShrink.State lobbySigns 1
execute unless score $BorderShrink.State lobbySigns matches 0..7 run scoreboard players set $BorderShrink.State lobbySigns 0

function sg:lobby/settings/actions/border_shrink/set_option