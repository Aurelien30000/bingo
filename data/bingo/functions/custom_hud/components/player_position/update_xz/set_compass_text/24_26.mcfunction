#> bingo:custom_hud/components/player_position/update_xz/set_compass_text/24_26
#
# Command Tree
#
# @within function bingo:custom_hud/components/player_position/update_xz/set_compass_text/18_26

execute if score $custom_hud/player_pos.rot bingo.tmp matches 24 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0248"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 25 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0247"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 26 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0246"'
