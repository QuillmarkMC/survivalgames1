#check current number of players
execute store result score #Temp teams if entity @a[team=Blue]
#display error or run join function based on result
execute if score #Temp teams >= $MaxTeamSize teams run tellraw @s [{"text": ""},{"text":"[!] ","color":"dark_red","bold": true},{"translate": "text.lobby.team_select.join.full"}]
execute if score #Temp teams < $MaxTeamSize teams run function sg:lobby/team_select/click_logic/blue/join
