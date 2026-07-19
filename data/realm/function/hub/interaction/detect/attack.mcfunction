
##detects change in timestamp from self

#working out which armor stand itself is
execute if predicate realm:interaction/game/sheep_wars on attacker at @s run function realm:hub/interaction/run/sheep_wars/attack

#elevators
execute if predicate realm:interaction/elevator/main_0 on attacker at @s run function realm:hub/interaction/run/elevator/main_0
execute if predicate realm:interaction/elevator/main_1 on attacker at @s run function realm:hub/interaction/run/elevator/main_1/attack
execute if predicate realm:interaction/elevator/main_2 on attacker at @s run function realm:hub/interaction/run/elevator/main_2/attack


#cleared change in timestamp for next tick
data merge entity @s {attack:{timestamp:0}}
