#values
scoreboard players set $MaxTeamSize teams 1
scoreboard players set $grace_period options 30
scoreboard players set $RestockType options 0
scoreboard players set $MapSize options 0
scoreboard players set $LootMode options 0
scoreboard players set $UHC options 0
scoreboard players set $RestockTime options 600
scoreboard players set $BorderDelay options 300
scoreboard players set $BorderShrink options 600

scoreboard players set $Locked lobbySigns 0

#states
scoreboard players set $MaxTeamSize.State lobbySigns 0
scoreboard players set $GracePeriod.State lobbySigns 0
scoreboard players set $RestockType.State lobbySigns 0
scoreboard players set $MapSize.State lobbySigns 0
scoreboard players set $LobbyMap.State lobbySigns -1
scoreboard players set $LootMode.State lobbySigns 0
scoreboard players set $UHC.State lobbySigns 0
scoreboard players set $RestockTime.State lobbySigns 0
scoreboard players set $BorderDelay.State lobbySigns 0
scoreboard players set $BorderShrink.State lobbySigns 0

#credits
fill -181 17 119 -181 15 111 air
function sg:lobby/settings/display/credits
