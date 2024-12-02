function sg:lobby/inventory/default_clear

item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"translate":"text.lobby.teleporter.name","color":"#3C5165","bold":true,"italic":false}',lore=['[{"keybind":"key.use","color":"gray"},{"translate":"text.lobby.teleporter.lore1","color":"gray","italic":false}]','{"translate":"text.lobby.teleporter.lore2","color":"gray","italic":false}','{"translate":"text.lobby.teleporter.lore3","color":"gray","italic":false}'],unbreakable={show_in_tooltip:false},custom_model_data=3,custom_data={SGLobbyTeleport:1},hide_additional_tooltip={}]
item replace entity @s hotbar.1 with wooden_sword[custom_name='{"translate":"text.lobby.arena.sword.name","color":"yellow","bold":false,"italic":false}',unbreakable={show_in_tooltip:false},hide_additional_tooltip={}]
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
function sg:general/player/inventory/lobby_book

item replace entity @s weapon.offhand with air

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air