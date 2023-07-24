#playsound, platform rise
#execute as @a[tag=SGPlaying] at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
execute as @a[tag=SGPlaying] at @s run playsound sg:game.platform.rise record @s ~ ~ ~ 0.8
#levitation
#execute as @a[tag=SGPlaying] at @s run tp @s ~ 35.0 ~ ~ ~
#effect give @a[tag=SGPlaying] levitation 999999 0 true
execute as @a[tag=SGPlaying] at @s run ride @s mount @e[type=armor_stand,sort=nearest,tag=SGPlatformRide,limit=1]
execute as @a[tag=SGPlaying] run title @s actionbar ""

#reset rise timer
scoreboard players operation $PlatformRise spawning = $platform_rise_time options
#start ticking platform tp (delay by 3 ticks) schedule
schedule function sg:game/starting/platform/rise_delay 3t