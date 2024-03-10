scoreboard players set $FloodState temple 1
tellraw @a[predicate=sg:temple/full,gamemode=adventure] {"translate": "text.game.temple.lava","italic": true, "color": "gray"}
schedule function sg:game/logic/temple/flood/start 20s