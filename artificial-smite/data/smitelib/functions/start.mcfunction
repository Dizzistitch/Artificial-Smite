## Revoke technical advancement
advancement revoke @s only smitelib:hit

## Check which Enchantment is being used
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:smite"}] run tag @s add smitelib.attack.smite
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}] run tag @s add smitelib.attack.bane

## Grab the Enchantment's level
execute as @s[tag=smitelib.attack.smite] store result score #smitelib.level smitelib.dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:smite"}].lvl
execute as @s[tag=smitelib.attack.bane] store result score #smitelib.level smitelib.dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl

## Check which enchantment is being used and call for the damage Function on appropriate entities
execute as @s[tag=smitelib.attack.smite] as @e[distance=..7,tag=smitelib.smite,nbt={HurtTime:10s}] run function smitelib:damage
execute as @s[tag=smitelib.attack.bane] as @e[distance=..7,tag=smitelib.bane,nbt={HurtTime:10s}] run function smitelib:damage

## Remove tags
tag @s remove smitelib.attack.smite
tag @s remove smitelib.attack.bane