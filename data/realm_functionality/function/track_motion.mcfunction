
##for tracking player rotation postion and velocity for easy use in other functions

#rotation tracking
execute store result score @s player.yaw run data get entity @s Rotation[0]
execute store result score @s player.pitch run data get entity @s Rotation[1]

#stores previous ticks position as past position then stores new position scaled up by 1000 for 3 point precision on future reduction
#subtract both and applies to velocity scoreboards
#velocity is stored as blocks per tick * 1000
#if wanting to apply this to another entity example for velocity.x would be:
#executestore result entity @e[type=armor_stand,tag=example,sort=nearest,limit=1] Motion[0] double 0.001 run scoreboard players get @s velocity.x

scoreboard players operation @s previous.position.x = @s position.x
scoreboard players operation @s previous.position.y = @s position.y
scoreboard players operation @s previous.position.z = @s position.z
execute store result score @s position.x run data get entity @s Pos[0] 1000
execute store result score @s position.y run data get entity @s Pos[1] 1000
execute store result score @s position.z run data get entity @s Pos[2] 1000
scoreboard players operation @s velocity.x = @s position.x
scoreboard players operation @s velocity.y = @s position.y
scoreboard players operation @s velocity.z = @s position.z
scoreboard players operation @s velocity.x -= @s previous.position.x
scoreboard players operation @s velocity.y -= @s previous.position.y
scoreboard players operation @s velocity.z -= @s previous.position.z
