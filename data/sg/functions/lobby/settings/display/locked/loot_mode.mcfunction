execute if score $LootMode.State lobbySigns matches 0 run setblock -183 17 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1014"},"text": ""}', '{"text":"Loot Generation","color":"light_purple"}', '{"text":"Normal","color":"green"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
execute if score $LootMode.State lobbySigns matches 1 run setblock -183 17 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1014"},"text": ""}', '{"text":"Loot Generation","color":"light_purple"}', '{"text":"Scarce","color":"red"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
execute if score $LootMode.State lobbySigns matches 2 run setblock -183 17 112 dark_oak_wall_sign[facing=west]{front_text:{messages:['{"clickEvent":{"action":"run_command","value": "/trigger lobbySigns set 1014"},"text": ""}', '{"text":"Loot Generation","color":"light_purple"}', '{"text":"Bountiful","color":"red"}', '{"text":""}'], has_glowing_text: true, color: "gray"}}
