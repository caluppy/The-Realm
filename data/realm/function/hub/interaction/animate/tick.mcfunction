
scoreboard players remove @s animate 1

execute if score @s animate matches 0 as @a[distance=..10] if predicate realm:interaction/animate/looking_at as @e[predicate=realm:interaction/animate/generic,distance=..1] run scoreboard players set @s animate -1
execute unless predicate realm:interaction/animate/score/80_100 run return fail

execute if predicate realm:interaction/animate/score/96_100 run tp ~ ~0.2 ~
execute if predicate realm:interaction/animate/score/91_95 run tp ~ ~0.1 ~
execute if predicate realm:interaction/animate/score/86_90 run tp ~ ~-0.1 ~
execute if predicate realm:interaction/animate/score/81_85 run tp ~ ~-0.2 ~

rotate @s ~18 ~
