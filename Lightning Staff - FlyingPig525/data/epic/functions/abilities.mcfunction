######## RIGHT CLICK ########
#### Create Scoreboard
scoreboard objectives add exampleobj minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={exampleobj=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{stormbreaker:1b}}}] at @s anchored eyes run summon lightning_bolt ^ ^-1 ^3

#### Reset objective
scoreboard players remove @a[scores={exampleobj=1..}] exampleobj 1