#State 0 = lobby, 1 = game
execute if score $state gamestate = $lobby gamestate run function sg:lobby/tick
execute if score $state gamestate = $game gamestate run function sg:game/tick