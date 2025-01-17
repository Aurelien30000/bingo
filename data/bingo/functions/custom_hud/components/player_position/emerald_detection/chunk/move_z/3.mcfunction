#> bingo:custom_hud/components/player_position/emerald_detection/chunk/move_z/3
#
# Makes sure 1-bit is not set for the z coordinate
#
# @context
# 	entity Player
# 	position @s
# @within function bingo:custom_hud/components/player_position/emerald_detection/chunk/move_z/2

execute if score $custom_hud/player_pos.z bingo.tmp matches 2.. run scoreboard players remove $custom_hud/player_pos.z bingo.tmp 2
execute if score $custom_hud/player_pos.z bingo.tmp matches 0 run function bingo:custom_hud/components/player_position/emerald_detection/chunk/detect_in_y_column
execute if score $custom_hud/player_pos.z bingo.tmp matches 1 positioned ~ ~ ~-1 run function bingo:custom_hud/components/player_position/emerald_detection/chunk/detect_in_y_column