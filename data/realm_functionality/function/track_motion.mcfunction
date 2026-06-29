
##for tracking player rotation postion and velocity for easy use in other functions

#rotation tracking
execute as @a[tag=track_motion] store result score @s player.yaw run data get entity @s Rotation[0]
execute as @a[tag=track_motion] store result score @s player.pitch run data get entity @s Rotation[1]

#stores previous ticks position as past position then stores new position scaled up by 1000 for 3 point precision on future reduction
#subtract both and applies to velocity scoreboards
#velocity is stored as blocks per tick * 1000
#if wanting to apply this to another entity example for velocity.x would be:
#execute as @a[tag=track_motion]store result entity @e[type=armor_stand,tag=example,sort=nearest,limit=1] Motion[0] double 0.001 run scoreboard players get @s velocity.x

execute as @a[tag=track_motion] run scoreboard players operation @s previous.position.x = @s position.x
execute as @a[tag=track_motion] run scoreboard players operation @s previous.position.y = @s position.y
execute as @a[tag=track_motion] run scoreboard players operation @s previous.position.z = @s position.z
execute as @a[tag=track_motion] store result score @s position.x run data get entity @s Pos[0] 1000
execute as @a[tag=track_motion] store result score @s position.y run data get entity @s Pos[1] 1000
execute as @a[tag=track_motion] store result score @s position.z run data get entity @s Pos[2] 1000
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.x = @s position.x
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.y = @s position.y
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.z = @s position.z
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.x -= @s previous.position.x
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.y -= @s previous.position.y
execute as @a[tag=track_motion] run scoreboard players operation @s velocity.z -= @s previous.position.z
