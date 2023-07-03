execute as @e[type=item_display,tag=aj.timer_new.root,limit=1] run function timer_new:animations/animation.model.rotating/pause
execute as @e[type=item_display,tag=aj.timer_new.root,limit=1] run function timer_new:animations/animation.model.timer_activate/play

#scoreboard players operation $countdown countdown = $game_start_countdown options
scoreboard players set $countdown countdown 16
function sg:game/starting/countdown