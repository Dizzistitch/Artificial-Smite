execute store result score #smitelib.health smitelib.dummy run data get entity @s Health
scoreboard players set #smitelib.damage smitelib.dummy 3
scoreboard players operation #smitelib.damage smitelib.dummy *= #smitelib.level smitelib.dummy
scoreboard players operation #smitelib.health smitelib.dummy -= #smitelib.damage smitelib.dummy

execute if score #smitelib.health smitelib.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get #smitelib.health smitelib.dummy
execute if score #smitelib.health smitelib.dummy matches ..0 run kill @s