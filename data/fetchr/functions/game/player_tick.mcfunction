#> fetchr:game/player_tick
#
# This function is called for every player while the game is running
#
# @within function fetchr:game/tick
# @context entity Player

scoreboard players enable @s fetchr.menu
execute if entity @s[scores={fetchr.menu=1}] run function fetchr:game/menu/print_without_hint
scoreboard players reset @s[scores={fetchr.menu=1}] fetchr.menu

scoreboard players enable @s[tag=!fetchr.spectator] fetchr.spectator
execute if score $game_state fetchr.state matches 3 if entity @s[tag=fetchr.enable_manual_gamemode_switch, gamemode=!survival] run tag @s add fetchr.spectator
execute unless score $game_state fetchr.state matches 3 if entity @s[tag=fetchr.enable_manual_gamemode_switch, gamemode=!adventure] run tag @s add fetchr.spectator

execute if score $game_state fetchr.state matches 3 run tellraw @s[tag=!fetchr.spectator, gamemode=!survival] [{"translate": "fetchr.game.switch_gamemode.prevented", "with": [{"translate": "fetchr.game.switch_gamemode.prevented.click", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger fetchr.spectator"}}]}, "\n\n",{"translate": "fetchr.game.switch_gamemode.hint", "color": "gray", "italic": true, "with": [{"text": "/trigger fetchr.spectator", "color": "white", "italic": false, "clickEvent": {"action": "suggest_command", "value": "/trigger fetchr.spectator"}}]}]
execute if score $game_state fetchr.state matches 3 run gamemode survival @s[tag=!fetchr.spectator, gamemode=!survival]
execute unless score $game_state fetchr.state matches 3 run tellraw @s[tag=!fetchr.spectator, gamemode=!adventure] [{"translate": "fetchr.game.switch_gamemode.prevented", "with": [{"translate": "fetchr.game.switch_gamemode.prevented.click", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger fetchr.spectator"}}]}, "\n\n",{"translate": "fetchr.game.switch_gamemode.hint", "color": "gray", "italic": true, "with": [{"text": "/trigger fetchr.spectator", "color": "white", "italic": false, "clickEvent": {"action": "suggest_command", "value": "/trigger fetchr.spectator"}}]}]
execute unless score $game_state fetchr.state matches 3 run gamemode adventure @s[tag=!fetchr.spectator, gamemode=!adventure]

tag @s[scores={fetchr.spectator=1}] add fetchr.spectator
# Gamemode creative to make F3+F4 switch to creative
gamemode creative @s[scores={fetchr.spectator=1}]
gamemode spectator @s[scores={fetchr.spectator=1}]
scoreboard players reset @s[scores={fetchr.spectator=1}] fetchr.spectator

# This should always be at the end to prevent game logic from running for this
# player in the lobby.
scoreboard players enable @s fetchr.lobby
execute if entity @s[scores={fetchr.lobby=1}] run function fetchr:util/go_to_lobby