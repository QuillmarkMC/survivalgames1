execute at @e[type=marker,tag=TeamSelect,limit=1] run setblock ~ ~ ~ air
kill @e[type=marker,tag=TeamSelect]
kill @e[type=text_display,tag=TeamSelectName]