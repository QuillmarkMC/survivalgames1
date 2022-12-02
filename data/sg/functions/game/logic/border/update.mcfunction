scoreboard players remove $Timer border 1
execute store result score $Size border run worldborder get

execute if score $Size border matches ..50 unless score $State border = $Deathmatch border run function sg:game/logic/border/begin_deathmatch

execute if score $State border = $Grace border run function sg:game/logic/border/render/grace
execute if score $State border = $Advance border run function sg:game/logic/border/render/advance
execute if score $State border = $Deathmatch border run function sg:game/logic/border/render/deathmatch

execute unless score $Timer border matches ..-1 run schedule function sg:game/logic/border/update 1s
