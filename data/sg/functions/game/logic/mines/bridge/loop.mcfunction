#play the break animation
execute as @e[type=marker,tag=SGBreakBridge] at @s run fill ~ ~ ~ ~12 ~7 ~ air destroy
execute as @e[type=marker,tag=SGBreakBridge] at @s run tp ^ ^ ^1
execute at @e[type=marker,tag=SGBreakBridge] run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 2.5 0.7
scoreboard players remove $BreakTime caveBridge 1
execute unless score $BreakTime caveBridge matches ..0 run schedule function sg:game/logic/mines/bridge/loop 5t
execute if score $BreakTime caveBridge matches ..0 run function sg:game/logic/mines/bridge/end