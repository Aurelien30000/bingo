#> bingo:item_detection/goals/bingo/row/3/2
#
# @within function bingo:item_detection/goals/bingo/row/3

#>
# @private
#declare score_holder $item_detect/bingo/row/3/2.success

execute store success score $item_detect/bingo/row/3/2.success bingo.tmp run data modify storage tmp.bingo:item_detect/bingo/row/3 icon set from storage bingo:card teams[-1].slots[11]
execute if score $item_detect/bingo/row/3/2.success bingo.tmp matches 0 run function bingo:item_detection/goals/bingo/row/3/3