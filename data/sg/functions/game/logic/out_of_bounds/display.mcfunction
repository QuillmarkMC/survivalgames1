#called by players who are standing out of bounds, refreshes /title display
title @s times 5 0 5
title @s subtitle {"text": "Please return to play area","color": "white"}
title @s title {"text": "Out of Bounds","color": "dark_red"}

scoreboard players set @s oob 10