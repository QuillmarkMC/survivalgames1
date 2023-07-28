#reset temp variables
function sg:lobby/team_select/reset_temp_var

#figure out which teams item was selected (double as clearing the item from inventory, including cursor)
execute store success score $TempAqua teams run clear @s bedrock{JoinTeamAqua:1} 1
execute store success score $TempBlack teams run clear @s bedrock{JoinTeamBlack:1} 1
execute store success score $TempBlue teams run clear @s bedrock{JoinTeamBlue:1} 1
execute store success score $TempCyan teams run clear @s bedrock{JoinTeamCyan:1} 1
execute store success score $TempDark_Blue teams run clear @s bedrock{JoinTeamDark_Blue:1} 1
execute store success score $TempDark_Gray teams run clear @s bedrock{JoinTeamDark_Gray:1} 1
execute store success score $TempDark_Green teams run clear @s bedrock{JoinTeamDark_Green:1} 1
execute store success score $TempPurple teams run clear @s bedrock{JoinTeamPurple:1} 1
execute store success score $TempDark_Red teams run clear @s bedrock{JoinTeamDark_Red:1} 1
execute store success score $TempGold teams run clear @s bedrock{JoinTeamGold:1} 1
execute store success score $TempGray teams run clear @s bedrock{JoinTeamGray:1} 1
execute store success score $TempGreen teams run clear @s bedrock{JoinTeamGreen:1} 1
execute store success score $TempMagenta teams run clear @s bedrock{JoinTeamMagenta:1} 1
execute store success score $TempRed teams run clear @s bedrock{JoinTeamRed:1} 1
execute store success score $TempWhite teams run clear @s bedrock{JoinTeamWhite:1} 1
execute store success score $TempYellow teams run clear @s bedrock{JoinTeamYellow:1} 1
execute store success score $TempLeave teams run clear @s bedrock{JoinTeamLeave:1} 1
execute store success score $TempRandom teams run clear @s bedrock{JoinTeamRandom:1} 1
execute store success score $TempReady teams run clear @s bedrock{JoinTeamReady:1} 1
execute store success score $TempNotReady teams run clear @s bedrock{JoinTeamNotReady:1} 1

#prevent changing teams during start countdown
execute if score $Count lobbyCountdown matches 0.. run function sg:lobby/team_select/countdown_started

#run logic based on what item was selected
execute if score $TempAqua teams matches 1.. run function sg:lobby/team_select/click_logic/aqua/request
execute if score $TempBlack teams matches 1.. run function sg:lobby/team_select/click_logic/black/request
execute if score $TempBlue teams matches 1.. run function sg:lobby/team_select/click_logic/blue/request
execute if score $TempCyan teams matches 1.. run function sg:lobby/team_select/click_logic/cyan/request
execute if score $TempDark_Blue teams matches 1.. run function sg:lobby/team_select/click_logic/dark_blue/request
execute if score $TempDark_Gray teams matches 1.. run function sg:lobby/team_select/click_logic/dark_gray/request
execute if score $TempDark_Green teams matches 1.. run function sg:lobby/team_select/click_logic/dark_green/request
execute if score $TempPurple teams matches 1.. run function sg:lobby/team_select/click_logic/purple/request
execute if score $TempDark_Red teams matches 1.. run function sg:lobby/team_select/click_logic/dark_red/request
execute if score $TempGold teams matches 1.. run function sg:lobby/team_select/click_logic/gold/request
execute if score $TempGray teams matches 1.. run function sg:lobby/team_select/click_logic/gray/request
execute if score $TempGreen teams matches 1.. run function sg:lobby/team_select/click_logic/green/request
execute if score $TempMagenta teams matches 1.. run function sg:lobby/team_select/click_logic/magenta/request
execute if score $TempRed teams matches 1.. run function sg:lobby/team_select/click_logic/red/request
execute if score $TempWhite teams matches 1.. run function sg:lobby/team_select/click_logic/white/request
execute if score $TempYellow teams matches 1.. run function sg:lobby/team_select/click_logic/yellow/request
execute if score $TempLeave teams matches 1.. run function sg:lobby/team_select/click_logic/leave_team/leave
execute if score $TempRandom teams matches 1.. run function sg:lobby/team_select/click_logic/random/random
execute if score $TempReady teams matches 1.. run function sg:lobby/team_select/click_logic/ready
execute if score $TempNotReady teams matches 1.. run function sg:lobby/team_select/click_logic/not_ready
#execute if score $TempUnavailable shop matches 1.. run function 

#update ender chest inventory
function sg:lobby/team_select/inventory/update

tag @s remove teamSelectDetect