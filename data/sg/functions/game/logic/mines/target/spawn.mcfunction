#destroy
summon marker 176 100 26 {Tags:["SGCaveBridgeTarget","SGCaveBridgeTarget4"]}
summon marker 176 105 16 {Tags:["SGCaveBridgeTarget","SGCaveBridgeTarget3"]}
summon marker 174 102 7 {Tags:["SGCaveBridgeTarget","SGCaveBridgeTarget1"]}
summon marker 180 98 9 {Tags:["SGCaveBridgeTarget","SGCaveBridgeTarget2"]}

execute at @e[type=marker,tag=SGCaveBridgeTarget] run setblock ~ ~ ~ target

#target 1
setblock 177 98 7 dripstone_block
setblock 177 97 7 pointed_dripstone
setblock 177 96 7 pointed_dripstone
setblock 177 95 7 pointed_dripstone

#target 2
setblock 181 98 8 dripstone_block
setblock 181 97 8 pointed_dripstone
setblock 181 96 8 pointed_dripstone
setblock 181 95 8 pointed_dripstone

#target 3
setblock 177 104 15 dripstone_block
setblock 177 103 15 pointed_dripstone
setblock 177 102 15 pointed_dripstone
setblock 177 101 15 pointed_dripstone
setblock 177 100 15 pointed_dripstone

#target 4
setblock 177 99 25 dripstone_block
setblock 177 98 25 pointed_dripstone
setblock 177 97 25 pointed_dripstone
setblock 177 96 25 pointed_dripstone