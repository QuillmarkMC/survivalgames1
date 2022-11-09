scoreboard players remove $countdown countdown 1

effect give @a[tag=SGPlaying] weakness 5 255 true

execute if score $countdown countdown matches 30 as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 1 1.5
execute if score $countdown countdown matches 15 as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 1 1.5
execute if score $countdown countdown matches 5 as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 1 1.5
execute if score $countdown countdown matches 30 run tellraw @a {"color":"green","text":"Grace period lasts for 30 more seconds..."}
execute if score $countdown countdown matches 15 run tellraw @a {"color":"green","text":"Grace period lasts for 15 more seconds..."}
execute if score $countdown countdown matches 5 run tellraw @a {"color":"green","text":"Grace period lasts for 5 more seconds..."}

execute if score $countdown countdown matches 1.. run schedule function sg:game/grace/countdown 1s replace
execute if score $countdown countdown matches 0 run function sg:game/grace/end