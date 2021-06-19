####ABILITIES
######## RIGHT CLICK ########
#### Create Scoreboard
scoreboard objectives add exampleobj minecraft.used:minecraft.carrot_on_a_stick
#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={exampleobj=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{stormbreaker:1b}}}] at @s anchored eyes run summon lightning_bolt ^ ^-1 ^3
#### Reset objective
scoreboard players remove @a[scores={exampleobj=1..}] exampleobj 1

####CRAFTING
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] at @s run execute at @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags: ["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Lightning Staff","color":"aqua","bold":true,"italic":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:753562,stormbreaker:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10s}]}}}
####KILL CRAFTING ITEMS
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},sort=nearest, limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},sort=nearest, limit=1]
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.ender_dragon.hurt master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.player.levelup master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:item.totem.use master @a
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft
