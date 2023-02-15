execute positioned -444 62 429 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned -444 62 429 run playsound entity.generic.explode block @a ~ ~ ~ 4 0.6

summon marker -500 46 390 {Tags:["SGTempleFloodMarker"]}
function sg:game/logic/temple/flood/loop