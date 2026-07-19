
#launch pad position checks
execute if predicate realm:player/hub/launch_pad/main_pos_x run function realm:hub/player/launch_pad/main_pos_x
execute if predicate realm:player/hub/launch_pad/main_neg_x run function realm:hub/player/launch_pad/main_neg_x

execute unless predicate realm:player/hub/do_effect run function realm:hub/player/hub_effects