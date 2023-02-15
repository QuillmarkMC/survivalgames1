scoreboard players set $FloodState temple 1
tellraw @a[predicate=sg:temple/full,gamemode=adventure] {"text": "Only those blinded by greed fail to see the consequences of their actions.","italic": true, "color": "gray"}
schedule function sg:game/logic/temple/flood/start 20s