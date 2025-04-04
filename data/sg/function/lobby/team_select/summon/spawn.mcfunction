function sg:lobby/team_select/summon/delete

summon marker -185.5 15.0 115.5 {Tags:["lobbyMarker","TeamSelect"]}
execute at @e[type=marker,tag=TeamSelect,limit=1] run summon minecraft:text_display ~ ~1.25 ~ {Tags:["TeamSelectName","lobbyMarker"],alignment:"center",text:{"text": ""},billboard:"center",background:0}
execute at @e[type=marker,tag=TeamSelect,limit=1] run setblock ~ ~ ~ ender_chest[facing=west]

execute if score $MaxTeamSize.State lobbySigns matches 1..2 run data merge entity @e[type=text_display,tag=TeamSelectName,limit=1] {text:{"translate":"text.lobby.team_select.chest.display2","color":"green"}}
execute if score $MaxTeamSize.State lobbySigns matches 0 run data merge entity @e[type=text_display,tag=TeamSelectName,limit=1] {text:{"translate":"text.lobby.team_select.chest.display1","color":"green"}}
