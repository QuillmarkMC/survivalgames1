scoreboard players set $Count lobbyCountdown -1
schedule clear sg:lobby/countdown
tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": ">","color": "white"},{"translate":"text.lobby.start.cancel","color":"white"}]