
summon sheep ~ ~ ~ {CustomName:"jeb_",CustomNameVisible:false,Invulnerable:true,OnGround:false,attributes:[{id:"air_drag_modifier",base:0.2}],Tags:["hub.launch"],Rotation:[-90.0f,-30.0f],Motion:[2.2f,1.1f,0.075f],DeathLootTable:"minecraft:empty"}
ride @s mount @n[predicate=realm:interaction/launch_pad/launch,distance=0]
attribute @s fall_damage_multiplier base set 0
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1 1