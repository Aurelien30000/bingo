#> bingo:custom_hud/components/player_position/update_xz/set_compass_text/51_53
#
# Command Tree
#
# @within function bingo:custom_hud/components/player_position/update_xz/set_compass_text/45_53

execute if score $custom_hud/player_pos.rot bingo.tmp matches 51 run data modify storage io.bingo:custom_hud component.icon set value '"\\u022D"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 52 run data modify storage io.bingo:custom_hud component.icon set value '"\\u022C"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 53 run data modify storage io.bingo:custom_hud component.icon set value '"\\u022B"'
