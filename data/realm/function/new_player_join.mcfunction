#welcomes new players and ? operators online if they should be op'ed
#function doesent need to be looped can be triggered if player without tag realm existing player joins the server
tp @s 0 -2 0 90 -35
tellraw @a {"text":"Welcome ","color":"green","extra":[{"selector":"@s","color":"dark_green"},{"text":" to the Realm!","color":"green"}]}
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,components:{fireworks:{flight_duration:50,explosions:[{shape:large_ball,has_twinkle:1b,has_trail:1b,colors:[I;16701501,8439583],fade_colors:[I;11546150]},{shape:star,has_twinkle:1b,colors:[I;16383998],fade_colors:[I;15961002]}]}}}}
gamemode adventure @s
spawnpoint @s 0 -2 0 90 -35

tag @s add realm.existing_player
