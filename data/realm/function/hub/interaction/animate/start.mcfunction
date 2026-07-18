execute if score @s animate matches -1 run return fail
scoreboard players set @s animate 101

execute if predicate realm:interaction/animate/sheep_wars run function realm:hub/interaction/animate/type/sheep_wars
