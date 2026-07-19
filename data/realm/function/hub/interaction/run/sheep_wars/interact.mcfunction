
function realm:hub/interaction/run/leave_hub

effect give @s resistance infinite 255 true
effect give @s instant_health infinite 255 true
effect give @s saturation infinite 255 true

tp @s 10000 41 10000 0 0

title @s actionbar [{"text":"Joining: ","color":"gold"},{"text":"Sheep Wars","color":"green"}]
playsound entity.player.teleport master @s 10000 41 10000 0.3 1
