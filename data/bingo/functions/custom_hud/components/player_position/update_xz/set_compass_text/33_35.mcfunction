#> bingo:custom_hud/components/player_position/update_xz/set_compass_text/33_35
#
# Command Tree
#
# @within function bingo:custom_hud/components/player_position/update_xz/set_compass_text/27_35

execute if score $custom_hud/player_pos.rot bingo.tmp matches 33 run data modify storage io.bingo:custom_hud component.icon set value '"\\u023F"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 34 run data modify storage io.bingo:custom_hud component.icon set value '"\\u023E"'
execute if score $custom_hud/player_pos.rot bingo.tmp matches 35 run data modify storage io.bingo:custom_hud component.icon set value '"\\u023D"'
