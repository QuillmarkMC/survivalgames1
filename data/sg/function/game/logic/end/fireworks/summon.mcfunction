summon firework_rocket ~ ~2.25 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1b,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[3754400]},{shape:"small_ball",has_trail:true,colors:[16299558]}]}}},Tags:["VictoryFirework"]}
#set owner to prevent self harm
#data modify entity @e[type=firework_rocket,tag=VictoryFirework,limit=1] Owner set from entity @s UUID
