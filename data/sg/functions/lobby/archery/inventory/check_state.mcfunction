#only replace inventory during initial countdown
execute if score $Countdown archeryVar matches 0.. run function sg:lobby/archery/inventory/give_items

scoreboard players set #ArcheryInvTemp archeryVar 1
execute if score $Countdown archeryVar matches ..-1 store success score #ArcheryInvTemp archeryVar run clear @s bow 0
execute if score #ArcheryInvTemp archeryVar matches 0 run advancement revoke @s only sg:inv_changed
execute if score #ArcheryInvTemp archeryVar matches 0 run function sg:lobby/archery/end