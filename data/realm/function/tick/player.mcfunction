
##background checks
#new player check and telemetry
execute if predicate realm:player/new run function realm:new_player_join
execute if predicate realm_functionality:track_motion run function realm_functionality:track_motion
#check if player loading new area
function realm:tick/check_load
