#> bingo:custom_hud/components/timer/update/6811_8268
#
# Command Tree
#
# @within function bingo:custom_hud/components/timer/update/3732_8268

execute if score $custom_hud/timer.daytime bingo.tmp matches ..7317 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0102"'
execute if score $custom_hud/timer.daytime bingo.tmp matches 7318..7802 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0103"'
execute if score $custom_hud/timer.daytime bingo.tmp matches 7803.. run data modify storage io.bingo:custom_hud component.icon set value '"\\u0104"'
