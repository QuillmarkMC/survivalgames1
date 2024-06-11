#called from lobby/team_select/random/check
#assigns a random player to first available team
scoreboard players set #RandomTeamAssigned teams 0
scoreboard players set #TempRandom teams 0

execute store success score #TempRandom teams if score #AquaCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/aqua/join
execute store success score #TempRandom teams if score #BlackCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/black/join
execute store success score #TempRandom teams if score #BlueCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/blue/join
execute store success score #TempRandom teams if score #CyanCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/cyan/join
execute store success score #TempRandom teams if score #Dark_BlueCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/dark_blue/join
execute store success score #TempRandom teams if score #Dark_GrayCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/dark_gray/join
execute store success score #TempRandom teams if score #Dark_GreenCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/dark_green/join
execute store success score #TempRandom teams if score #PurpleCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/purple/join
execute store success score #TempRandom teams if score #Dark_RedCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/dark_red/join
execute store success score #TempRandom teams if score #GoldCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/gold/join
execute store success score #TempRandom teams if score #GrayCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/gray/join
execute store success score #TempRandom teams if score #GreenCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/green/join
execute store success score #TempRandom teams if score #MagentaCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/magenta/join
execute store success score #TempRandom teams if score #RedCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/red/join
execute store success score #TempRandom teams if score #WhiteCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/white/join
execute store success score #TempRandom teams if score #YellowCount teams < $MaxTeamSize teams 
execute if score #TempRandom teams matches 1 unless score #RandomTeamAssigned teams matches 1 run function sg:lobby/team_select/click_logic/yellow/join

execute unless score #RandomTeamAssigned teams matches 1 run team join Spectator
execute unless score #RandomTeamAssigned teams matches 1 run tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"translate": "text.lobby.team_select.random.error1","color": "dark_red"},{"translate": "text.lobby.team_select.random.error2"}]
