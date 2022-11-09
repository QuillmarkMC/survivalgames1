scoreboard players operation $countdown countdown = $grace_period options
tellraw @a [{"color":"green","text":"Grace period lasts for "},{"score":{"name":"$grace_period","objective":"options"}},{"text":" seconds."}]
function sg:game/grace/countdown