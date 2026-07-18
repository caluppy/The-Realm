
##detects change in timestamp from self

#working out which interaction itself is
execute if predicate realm:interaction/game/sheep_wars on target at @s run function realm:hub/interaction/run/sheep_wars/interact

#cleared change in timestamp for next tick
data merge entity @s {interaction:{timestamp:0}}
