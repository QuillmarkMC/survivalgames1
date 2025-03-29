function sg:lobby/inventory/default_clear

item replace entity @s hotbar.0 with iron_sword[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s hotbar.1 with stone_axe[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
function sg:general/player/inventory/lobby_book

item replace entity @s weapon.offhand with air

item replace entity @s armor.head with iron_helmet[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s armor.legs with iron_leggings[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s armor.feet with iron_boots[unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]