execute if score $MaxTeamSize teams matches 2 run function sg:lobby/team_select/inventory/states/duo
execute if score $MaxTeamSize teams matches 3 run function sg:lobby/team_select/inventory/states/trio
execute unless score $MaxTeamSize teams matches 2..3 run function sg:lobby/team_select/inventory/states/unsupported