#playsound, platform rise
execute as @a[tag=SGPlaying] at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
#levitation
effect give @a[tag=SGPlaying] levitation 999999 1 true
#reset rise timer
scoreboard players operation $PlatformRise spawning = $platform_rise_time options
#start ticking platform tp (delay by 2 ticks) schedule
schedule function sg:game/starting/platform/rise_delay 2t