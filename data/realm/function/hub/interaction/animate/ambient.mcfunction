
particle end_rod ~ ~ ~ 0.7 1 0.7 0 1
execute unless predicate realm:interaction/animate/score/80_100 facing entity @a[distance=..25] eyes run rotate @s ~ ~20
execute if score @s animate > #0 constants at @s run return run function realm:hub/interaction/animate/tick

execute as @a[distance=..10] if predicate realm:interaction/animate/looking_at as @e[predicate=realm:interaction/animate/generic,distance=..1] at @s run return run function realm:hub/interaction/animate/start
scoreboard players set @s animate 0