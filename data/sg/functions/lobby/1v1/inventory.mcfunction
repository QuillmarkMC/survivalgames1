function sg:lobby/inventory/default_clear

item replace entity @s hotbar.0 with iron_sword{Unbreakable:true,HideFlags:127}
item replace entity @s hotbar.1 with stone_axe{Unbreakable:true,HideFlags:127}
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
function sg:general/player/inventory/lobby_book

item replace entity @s weapon.offhand with air

item replace entity @s armor.head with iron_helmet{Unbreakable:true,HideFlags:127}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true,HideFlags:127}
item replace entity @s armor.legs with iron_leggings{Unbreakable:true,HideFlags:127}
item replace entity @s armor.feet with iron_boots{Unbreakable:true,HideFlags:127}