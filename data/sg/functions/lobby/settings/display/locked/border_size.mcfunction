execute if score $MapSize.State lobbySigns matches 0 run setblock -183 16 118 spruce_wall_sign[facing=west]{GlowingText:true,Color:"gray",Text1:'{"text":"Border","color":"light_purple"}',Text2:'{"text":"Starting Size","color":"light_purple"}',Text3:'{"text":"1000","color":"green"}',Text4:'{"text":"blocks","color":"gold"}'}
execute if score $MapSize.State lobbySigns matches 1 run setblock -183 16 118 spruce_wall_sign[facing=west]{GlowingText:true,Color:"gray",Text1:'{"text":"Border","color":"light_purple"}',Text2:'{"text":"Starting Size","color":"light_purple"}',Text3:'{"text":"750","color":"red"}',Text4:'{"text":"blocks","color":"gold"}'}
execute if score $MapSize.State lobbySigns matches 2 run setblock -183 16 118 spruce_wall_sign[facing=west]{GlowingText:true,Color:"gray",Text1:'{"text":"Border","color":"light_purple"}',Text2:'{"text":"Starting Size","color":"light_purple"}',Text3:'{"text":"500","color":"red"}',Text4:'{"text":"blocks","color":"gold"}'}
