function sg:lobby/team_select/summon/delete

summon marker -185.5 15.0 115.5 {Tags:["lobbyMarker","TeamSelect"]}
execute at @e[type=marker,tag=TeamSelect,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["TeamSelectName","lobbyMarker"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"{\"text\":\"Select your team!\",\"color\":\"green\"}",CustomNameVisible:1b}
execute at @e[type=marker,tag=TeamSelect,limit=1] run setblock ~ ~ ~ ender_chest[facing=west]