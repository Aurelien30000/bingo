data modify storage bingo:tmp curCat set from storage bingo:tmp categories[0]
data remove storage bingo:tmp categories[0]

scoreboard players set $weight_multiplier bingo_tmp 1
scoreboard players set $total_weight bingo_tmp 0
data remove storage bingo:tmp items
execute store result score $items_left bingo_tmp run data get storage bingo:tmp curCat.items[0]