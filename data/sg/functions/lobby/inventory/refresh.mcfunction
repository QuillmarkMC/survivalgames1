function sg:lobby/inventory/default_clear

#item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Ready up","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"Right click to indicate you are ready to start the game.","color":"gray","italic":true}']},HideFlags:127,SGLobbyReady:1,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Personal Teleporter","color":"#3C5165","bold":true,"italic":false}',Lore:['[{"text":"Right click to teleport yourself","color":"gray","italic":false},{"text":"to the Admin room, where you can","color":"gray","italic":false},{"text":"select your team and edit settings.","color":"gray","italic":false}]']},HideFlags:127,SGLobbyTeleport:1,Unbreakable:1b,CustomModelData:3} 1
item replace entity @s hotbar.1 with air
#item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Spectate","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"Right click if you want to spectate the next game.","color":"gray","italic":true}']},HideFlags:127,SGLobbySpectate:1,Unbreakable:1b,CustomModelData:2} 1
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

item replace entity @s weapon.offhand with air

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air