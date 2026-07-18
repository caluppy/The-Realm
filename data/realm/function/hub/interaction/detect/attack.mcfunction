
##detects change in timestamp from self

#working out which armor stand itself is
execute if predicate realm:interaction/game/sheep_wars on attacker at @s run function realm:hub/interaction/run/sheep_wars/attack

#cleared change in timestamp for next tick
data merge entity @s {attack:{timestamp:0}}
