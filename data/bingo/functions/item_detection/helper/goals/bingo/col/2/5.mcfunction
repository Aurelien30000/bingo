execute store success score $success bingo_tmp run data modify storage bingo:tmp icon set from storage bingo:tmp slots[21]
execute if score $success bingo_tmp matches 0 run scoreboard players set $col bingo_tmp 2