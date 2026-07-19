
##detects change in timestamp from self

#working out which interaction itself is
execute if predicate realm:interaction/game/sheep_wars on target at @s run function realm:hub/interaction/run/sheep_wars/interact

#elevators
execute if predicate realm:interaction/elevator/main_0 on target at @s run function realm:hub/interaction/run/elevator/main_0
execute if predicate realm:interaction/elevator/main_1 on target at @s run function realm:hub/interaction/run/elevator/main_1/interact
execute if predicate realm:interaction/elevator/main_2 on target at @s run function realm:hub/interaction/run/elevator/main_2/interact

#cleared change in timestamp for next tick
data merge entity @s {interaction:{timestamp:0}}
