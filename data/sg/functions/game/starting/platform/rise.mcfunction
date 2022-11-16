#playsound, platform rise
execute as @a[tag=SGPlaying] at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
#levitation
execute as @a[tag=SGPlaying] at @s run tp @s ~ 35.0 ~ ~ ~
effect give @a[tag=SGPlaying] levitation 999999 0 true
#reset rise timer
scoreboard players operation $PlatformRise spawning = $platform_rise_time options
#start ticking platform tp (delay by 2 ticks) schedule
schedule function sg:game/starting/platform/rise_delay 2t