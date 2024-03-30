#check if player tried to bypass the lock system (manually type trigger command), if true set to a random unused amount (so it does nothing)
execute if score @s lobbySigns matches 1..100 if score $Locked lobbySigns matches 1 run scoreboard players set @s lobbySigns 1999
#if player clicked on locked sign, check if they have permission to edit
execute if score @s lobbySigns matches 1000.. if entity @s[tag=Admin] run scoreboard players remove @s lobbySigns 1000
#if countdown has started, prevent changing settings
execute if score $Count lobbyCountdown matches 0.. unless score @s lobbySigns matches 1..2 run scoreboard players set @s lobbySigns 999

#trigger based on action (sign/chat click)
execute if score @s lobbySigns matches 1 run function sg:lobby/start_logic/check_num_players
execute if score @s lobbySigns matches 2 if score $Count lobbyCountdown matches 0.. run function sg:lobby/start_logic/interrupt/permission
execute if score @s lobbySigns matches 3 run function sg:lobby/settings/actions/lock
execute if score @s lobbySigns matches 4 run function sg:lobby/settings/actions/unlock/manual
#execute if score @s lobbySigns matches 5 run function sg:lobby/settings/actions/credits/download
#execute if score @s lobbySigns matches 6 run function sg:lobby/settings/actions/credits/trailer
execute if score @s lobbySigns matches 10 run function sg:lobby/settings/actions/team_size/click
execute if score @s lobbySigns matches 11 run function sg:lobby/settings/actions/grace_period
execute if score @s lobbySigns matches 12 run function sg:lobby/settings/actions/restock_type
execute if score @s lobbySigns matches 13 run function sg:lobby/settings/actions/map_size
execute if score @s lobbySigns matches 14 run function sg:lobby/settings/actions/loot_mode
execute if score @s lobbySigns matches 15 run function sg:lobby/settings/actions/uhc
execute if score @s lobbySigns matches 16 run function sg:lobby/settings/actions/restock_time/click
execute if score @s lobbySigns matches 17 run function sg:lobby/settings/actions/border_delay/click
execute if score @s lobbySigns matches 18 run function sg:lobby/settings/actions/border_shrink/click

execute unless score @s lobbySigns matches 1..4 at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75

execute if score @s lobbySigns matches 999 run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.settings.error.game_start"}]
execute if score @s lobbySigns matches 1000.. run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.settings.permission.error1"},{"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.settings.permission.error2","italic":true,"color":"yellow"}]},"clickEvent":{"action":"run_command","value": "/function sg:lobby/settings/actions/unlock/grant_permission"},"translate": "text.lobby.settings.permission.error3","underlined": true,"color": "gold"},{"translate": "text.lobby.settings.permission.error4"}]
function sg:lobby/settings/display/update
scoreboard players reset @s lobbySigns