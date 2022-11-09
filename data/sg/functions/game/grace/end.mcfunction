tellraw @a {"color":"green","text":"Grace period has ended! You can now attack."}
execute as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 1 0.2
effect clear @a weakness