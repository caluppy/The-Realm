#base loop to trigger other functions that shouldnt be looped due to lag
execute if entity @a[tag=!realm_existing_player] run function background_realm_hub:new_player_join