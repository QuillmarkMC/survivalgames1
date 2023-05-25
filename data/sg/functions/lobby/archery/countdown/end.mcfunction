scoreboard players set $Countdown archeryVar -1
#actual minigame starts
function sg:lobby/archery/gameplay/timer/update
item replace entity @a[tag=SGArcheryPlayer,limit=1] hotbar.1 with arrow 32