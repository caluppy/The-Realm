
##detects change in timestamp resets itself as 0 after function

execute store result score @s interaction.attack.time run data get entity @s attack.timestamp
execute store result score @s interaction.interact.time run data get entity @s interaction.timestamp

execute unless score @s interaction.attack.time matches 0 run function realm:hub/interaction/detect/attack
execute unless score @s interaction.interact.time matches 0 run function realm:hub/interaction/detect/interact

execute as @e[predicate=realm:interaction/animate/generic,distance=..1.5] at @s run function realm:hub/interaction/animate/ambient