#> bingo:custom_hud/components/player_position/update_xz/set_compass_text/39_41
#
# Command Tree
#
# @within function bingo:custom_hud/components/player_position/update_xz/set_compass_text/36_44

execute if score $custom_hud/player_pos.rot bingo.tmp matches 39 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0239"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 40 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0238"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 41 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0237"'
