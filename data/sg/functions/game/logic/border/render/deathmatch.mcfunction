bossbar set border color yellow
execute store result bossbar border value run scoreboard players get $Timer border
scoreboard players operation #Num1 border = $Timer border
scoreboard players operation #Num2 border = $Timer border
scoreboard players operation #Num1 border /= #60 border
scoreboard players operation #Num2 border %= #60 border
execute if score #Num2 border matches 10.. run bossbar set border name [{"text":"Game ends in: ","color":"#999999"},{"score":{"name":"#Num1","objective":"border"},"color":"white"},{"text": ":","color": "white"},{"score":{"name":"#Num2","objective":"border"},"color":"white"}]
execute if score #Num2 border matches ..9 run bossbar set border name [{"text":"Game ends in: ","color":"#999999"},{"score":{"name":"#Num1","objective":"border"},"color":"white"},{"text": ":0","color": "white"},{"score":{"name":"#Num2","objective":"border"},"color":"white"}]

#make this better at some point
execute if score $Timer border matches ..0 run function sg:game/logic/end/no_winner