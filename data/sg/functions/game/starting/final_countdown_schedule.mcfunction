execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.rotating/pause
execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_one/play

scoreboard players operation $countdown countdown = $game_start_countdown options
function sg:game/starting/countdown