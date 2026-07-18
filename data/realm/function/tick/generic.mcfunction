#base loop to trigger other functions that shouldnt be looped due to lag

execute as @a at @s run function realm:tick/player

execute positioned 0 0 0 as @e[predicate=realm:interaction/generic,distance=..500] at @s run function realm:hub/interaction/detect/generic