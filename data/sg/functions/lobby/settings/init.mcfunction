#values
scoreboard players set $MaxTeamSize teams 1
scoreboard players set $grace_period options 30
scoreboard players set $RestockType options 0
scoreboard players set $MapSize options 0

scoreboard players set $Locked lobbySigns 0

#states
scoreboard players set $MaxTeamSize.State lobbySigns 0
scoreboard players set $GracePeriod.State lobbySigns 0
scoreboard players set $RestockType.State lobbySigns 0
scoreboard players set $MapSize.State lobbySigns 0

#credits
fill -181 17 119 -181 15 111 air
function sg:lobby/settings/display/credits

#teleporters
function sg:lobby/settings/teleporters/summon