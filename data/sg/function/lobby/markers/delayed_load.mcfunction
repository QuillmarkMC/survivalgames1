#wait to load entities on /reload until we are sure the server has loaded them
#contains all of the init functions that would normally be in the lobby/load function, but summons entities
scoreboard players set $EntityLoad lobbyVar 1

function sg:lobby/markers/summon
function sg:lobby/team_select/init
function sg:lobby/doors/init
function sg:lobby/settings/display/update
function sg:lobby/arena/init
function sg:lobby/archery/init
function sg:lobby/training/spawn_weapons_rack
function sg:lobby/settings/teleporters/summon
function sg:lobby/1v1/init