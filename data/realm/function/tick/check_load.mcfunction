
execute if score #sheep_wars realm.loaded matches 0 positioned 10000 0 10000 if entity @s[predicate=realm:player/load/sheep_wars,distance=..500] store success score #sheep_wars realm.loaded run datapack enable "file/sheep_wars"
