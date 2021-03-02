#> bingo:util/find_player_team/dark_purple
#
# Marks team dark_purple as current team
#
# @within function bingo:util/find_player_team

data modify storage bingo:card teams[{id:"bingo:dark_purple"}].selected set value true
tag @a[team=bingo.dark_purpl] add bingo.in_current_team