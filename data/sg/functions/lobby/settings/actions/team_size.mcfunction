scoreboard players add $MaxTeamSize.State lobbySigns 1
execute unless score $MaxTeamSize.State lobbySigns matches 0..2 run scoreboard players set $MaxTeamSize.State lobbySigns 0

execute if score $MaxTeamSize.State lobbySigns matches 0 run scoreboard players set $MaxTeamSize teams 1
execute if score $MaxTeamSize.State lobbySigns matches 1 run scoreboard players set $MaxTeamSize teams 2
execute if score $MaxTeamSize.State lobbySigns matches 2 run scoreboard players set $MaxTeamSize teams 3

execute if score $MaxTeamSize.State lobbySigns matches 1..2 run data merge entity @e[type=armor_stand,tag=TeamSelectName,limit=1] {CustomName:"{\"text\":\"Select your team!\",\"color\":\"green\"}"}
execute if score $MaxTeamSize.State lobbySigns matches 0 run data merge entity @e[type=armor_stand,tag=TeamSelectName,limit=1] {CustomName:"{\"text\":\"Ready up!\",\"color\":\"green\"}"}

#force update the team select chest for all nearby players
execute at @e[type=marker,tag=TeamSelect] as @a[distance=..8] run scoreboard players set @s teamSelectTimer 0