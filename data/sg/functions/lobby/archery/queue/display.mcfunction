scoreboard players operation $Num1 math = @s archeryQueuePosition
scoreboard players add $Num1 math 1
title @s actionbar [{"text": ""},{"text":"Position in Queue: ","color":"gold"},{"score":{"name":"$Num1","objective":"math"},"color":"white"}]