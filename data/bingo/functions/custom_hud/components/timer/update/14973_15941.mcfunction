#> bingo:custom_hud/components/timer/update/14973_15941
#
# Command Tree
#
# @within function bingo:custom_hud/components/timer/update/14973_17842

execute if score $custom_hud/timer.daytime bingo.tmp matches ..15297 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0117"'
execute if score $custom_hud/timer.daytime bingo.tmp matches 15298..15620 run data modify storage io.bingo:custom_hud component.icon set value '"\\u0118"'
execute if score $custom_hud/timer.daytime bingo.tmp matches 15621.. run data modify storage io.bingo:custom_hud component.icon set value '"\\u0119"'
