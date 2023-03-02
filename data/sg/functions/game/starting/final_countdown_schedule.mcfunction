#execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.rotating/pause
#execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_one/play
execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_two/resume

#scoreboard players operation $countdown countdown = $game_start_countdown options
scoreboard players set $countdown countdown 16
function sg:game/starting/countdown