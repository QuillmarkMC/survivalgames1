#check current number of players
execute store result score #Temp teams if entity @a[team=White]
#display error or run join function based on result
execute if score #Temp teams >= $MaxTeamSize teams run tellraw @s [{"text": ""},{"text":"[!] ","color":"dark_red","bold": true},{"text": "That team is full! Please select a different team to join."}]
execute if score #Temp teams < $MaxTeamSize teams run function sg:lobby/team_select/click_logic/white/join
