setblock -183 16 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1011"},"text": ""}', '{"translate":"text.lobby.settings.signs.grace_period","color":"light_purple"}', '{"score":{"name":"$grace_period","objective":"options"},"color":"red"}', '{"translate":"text.lobby.settings.signs.seconds","color":"gold"}'], has_glowing_text: true, color: "gray"}}
execute if score $GracePeriod.State lobbySigns matches 0 run data modify block -183 16 112 front_text.messages[2] set value '{"score":{"name":"$grace_period","objective":"options"},"color":"green"}'
