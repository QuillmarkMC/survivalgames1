scoreboard players add $UHC.State lobbySigns 1
execute unless score $UHC.State lobbySigns matches 0..1 run scoreboard players set $UHC.State lobbySigns 0

execute if score $UHC.State lobbySigns matches 0 run scoreboard players set $UHC options 0
execute if score $UHC.State lobbySigns matches 1 run scoreboard players set $UHC options 1