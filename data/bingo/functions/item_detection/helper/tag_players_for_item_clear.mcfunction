execute store result score $player bingo.tmp run data get storage bingo:card slots[{selected: true}].players[0]
execute as @a if score @s bingo.id = $player bingo.tmp run tag @s add bingo.clear
data remove storage bingo:card slots[{selected: true}].players[0]

execute if data storage bingo:card slots[{selected: true}].players[0] run function bingo:item_detection/helper/tag_players_for_item_clear