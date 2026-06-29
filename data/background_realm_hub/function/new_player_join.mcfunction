#welcomes new players and ? operators online if they should be op'ed
#function doesent need to be looped can be triggered if player without tag realm existing player joins the server
tag @a[tag=!realm_existing_player] add new_player
tp @a[tag=new_player] 0 -2 0 90 -35
execute as @a[tag=new_player] run tellraw @a {"text":"Welcome ","color":"green","extra":[{"selector":"@s","color":"dark_green"},{"text":" to the Realm!","color":"green"}]}
execute as @a[tag=new_player] run execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,components:{fireworks:{flight_duration:50,explosions:[{shape:large_ball,has_twinkle:1b,has_trail:1b,colors:[I;16701501,8439583],fade_colors:[I;11546150]},{shape:star,has_twinkle:1b,colors:[I;16383998],fade_colors:[I;15961002]}]}}}}
gamemode adventure @a[tag=new_player]
tag @a[tag=new_player] add realm_query_operator
execute as @a[tag=new_player,limit=1] run tellraw @a[tag=realm_operator] [{"text":"[Realm]: ","color":"gold"},{"text":"Would you like to op these players: ","color":"green"},{"selector":"@a[tag=realm_query_operator]","color":"red","italic":true},{"text":"? ","color":"green"},{"color":"dark_green","text":"[yes]","click_event":{"action":"run_command","command":"/function background_realm_hub:op_player"},"hover_event":{"action":"show_text","value":[{"text":"click to op","color":"red"}]}},{"text":", ","color":"green"},{"color":"dark_red","text":"[no]","click_event":{"action":"run_command","command":"/tag @a[tag=realm_query_operator] remove realm_query_operator"},"hover_event":{"action":"show_text","value":[{"text":"click to deny","color":"red"}]}}]
tag @a[tag=new_player] add realm_existing_player
tag @a[tag=new_player] remove new_player
