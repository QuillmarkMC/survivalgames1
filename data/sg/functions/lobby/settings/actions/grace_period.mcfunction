scoreboard players add $GracePeriod.State lobbySigns 1
execute unless score $GracePeriod.State lobbySigns matches 0..4 run scoreboard players set $GracePeriod.State lobbySigns 0

execute if score $GracePeriod.State lobbySigns matches 0 run scoreboard players set $grace_period options 30
execute if score $GracePeriod.State lobbySigns matches 1 run scoreboard players set $grace_period options 60
execute if score $GracePeriod.State lobbySigns matches 2 run scoreboard players set $grace_period options 120
execute if score $GracePeriod.State lobbySigns matches 3 run scoreboard players set $grace_period options 15
execute if score $GracePeriod.State lobbySigns matches 4 run scoreboard players set $grace_period options 5