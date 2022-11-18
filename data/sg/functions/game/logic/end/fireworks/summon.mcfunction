summon firework_rocket ~ ~2.25 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Type:0,Trail:1b,Colors:[I;3754400],Flicker:1b},{Type:0,Trail:1b,Colors:[I;16299558]}]}}},Tags:["VictoryFirework"]}
#set owner to prevent self harm
data modify entity @e[type=firework_rocket,tag=VictoryFirework,limit=1] Owner set from entity @s UUID
