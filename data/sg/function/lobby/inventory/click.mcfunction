#execute if data entity @s SelectedItem.tag.SGLobbyReady run function sg:lobby/inventory/ready
#execute if data entity @s SelectedItem.tag.SGLobbySpectate run function sg:lobby/inventory/spectate
execute if data entity @s SelectedItem.components.minecraft:custom_data.SGLobbyTeleport run function sg:lobby/inventory/teleport/check

scoreboard players reset @s click