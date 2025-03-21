scoreboard players operation $Num1 math = $BorderDelay options
scoreboard players operation $Num1 math /= #60 math
setblock -183 17 118 oak_wall_sign[facing=west]{front_text:{messages:[{"click_event":{"action":"run_command","command": "/trigger lobbySigns set 17"},"text": ""}, {"translate":"text.lobby.settings.signs.border_delay","color":"light_purple"}, {"score":{"name":"$Num1","objective":"math"},"color":"red"}, {"translate":"text.lobby.settings.signs.minutes","color":"gold"}], has_glowing_text: true, color: "gray"}}
execute if score $Num1 math matches 0 run data modify block -183 17 118 front_text.messages[2] set value {"score":{"name":"$BorderDelay","objective":"options"},"color":"red"}
execute if score $Num1 math matches 0 run data modify block -183 17 118 front_text.messages[3] set value {"translate":"text.lobby.settings.signs.seconds","color":"gold"}
execute if score $BorderDelay.State lobbySigns = $MapSize.State lobbySigns unless score $Num1 math matches 0 run data modify block -183 17 118 front_text.messages[2] set value {"score":{"name":"$Num1","objective":"math"},"color":"green"}
execute if score $BorderDelay.State lobbySigns = $MapSize.State lobbySigns if score $Num1 math matches 0 run data modify block -183 17 118 front_text.messages[2] set value {"score":{"name":"$BorderDelay","objective":"options"},"color":"green"}
