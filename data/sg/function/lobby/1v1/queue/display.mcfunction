scoreboard players operation $Num1 math = @s 1v1QueuePosition
scoreboard players add $Num1 math 1
title @s actionbar [{"text": ""},{"translate":"text.lobby.1v1.queue","color":"gold"},{"score":{"name":"$Num1","objective":"math"},"color":"white"}]