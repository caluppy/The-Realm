#op's players for the new_player_join.mcfunction
#only works on servers not in singleplayer
#to get to work on servers, change server.properties file -> function-permission-level=3, it is set to 2 by default
#when running on server remove hash on next line to allow opping players
#op @a[tag=realm_query_operator]
tellraw @a[tag=realm_operator,tag=!realm_query_operator] [{"text":"[Realm]: ","color":"gold"},{"text":"The players: ","color":"green"},{"selector":"@a[tag=realm_query_operator]","color":"red","italic":true},{"text":" have been op'ed!","color":"green"}]
tag @a[tag=realm_query_operator] remove realm_query_operator