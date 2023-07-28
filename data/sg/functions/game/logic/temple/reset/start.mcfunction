scoreboard players reset * temple
scoreboard players set $FloodState temple 0
scoreboard players set $FloodLevel temple 0

#recursive call to clear all lava
scoreboard players set $TempleResetLevel temple 0
execute positioned -500 46 383 run function sg:game/logic/temple/reset/loop

#manually place back needed lava source blocks
fill -432 63 413 -456 63 413 lava
fill -456 63 421 -432 63 421 lava
fill -432 63 437 -456 63 437 lava
fill -456 63 445 -432 63 445 lava
fill -436 63 449 -436 63 409 lava
fill -444 63 409 -444 63 426 lava
fill -441 63 429 -436 63 429 lava
fill -444 63 432 -444 63 449 lava
fill -447 63 429 -452 63 429 lava
fill -452 63 449 -452 63 409 lava
fill -442 47 427 -446 47 431 lava

setblock -431 74 437 lava
setblock -431 74 445 lava
setblock -436 74 450 lava
setblock -444 74 450 lava
setblock -452 74 450 lava
setblock -457 74 445 lava
setblock -457 74 421 lava
setblock -457 74 413 lava
setblock -452 74 408 lava
setblock -444 74 408 lava
setblock -436 74 408 lava
setblock -431 74 413 lava
setblock -431 74 421 lava