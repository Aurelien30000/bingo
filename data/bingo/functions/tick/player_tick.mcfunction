#> bingo:tick/player_tick
#
# This function is called for every player
#
# @within function bingo:tick/tick
# @context entity Player


#>
# @within function bingo:tick/*
#declare storage tmp.bingo:tick
execute in minecraft:overworld run teleport @s[tag=bingo.resourcepack_check, predicate=!bingo:is_in_overworld] 1 1 1 0 0

#region check player position change
execute as @e[type=minecraft:area_effect_cloud, x=0.5, y=0, z=0.5, distance=..0.1, tag=bingo.pos_reader, limit=1] run function bingo:tick/tp_pos_marker
#>
# The x coordinate of the current player
#
# @internal
#declare score_holder $tick/player.x
execute store result score $tick/player.x bingo.tmp run data get storage tmp.bingo:tick posReader.Pos[0]

#>
# The x coordinate of the current player
#
# @internal
#declare score_holder $tick/player.y
execute store result score $tick/player.y bingo.tmp run data get storage tmp.bingo:tick posReader.Pos[1]

#>
# The z coordinate of the current player
#
# @internal
#declare score_holder $tick/player.z
execute store result score $tick/player.z bingo.tmp run data get storage tmp.bingo:tick posReader.Pos[2]

#>
# The rotation of the player for the compass icon in a resolution of 32 possible
# values
#
# @internal
#declare score_holder $tick/player.rot
# Rotation / 5.625 (divides the 360 possible values into 192)
execute store result score $tick/player.rot bingo.tmp run data get storage tmp.bingo:tick posReader.Rotation[0] 0.53333333333333333333333333333333
# Divide by 2 and ceil to next integer
scoreboard players add $tick/player.rot bingo.tmp 1
scoreboard players operation $tick/player.rot bingo.tmp /= 2 bingo.const
scoreboard players operation $tick/player.rot bingo.tmp %= 96 bingo.const

tag @s add bingo.position_changed
execute if score @s bingo.prev_x_pos = $tick/player.x bingo.tmp if score @s bingo.prev_y_pos = $tick/player.y bingo.tmp if score @s bingo.prev_z_pos = $tick/player.z bingo.tmp if score @s bingo.prev_rot = $tick/player.rot bingo.tmp run tag @s remove bingo.position_changed
#endregion

#region resourcepack check
# Auto-validate if Singleplayer
execute if score $is_multiplayer bingo.state matches 0 run tellraw @s[tag=bingo.resourcepack_check] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score $is_multiplayer bingo.state matches 0 run scoreboard players set @s[tag=bingo.resourcepack_check] bingo.resources 91

# Send Resource pack check chat message
#
# Uses technical translation strings with unused argument indexes - below
# (1, 2 are string argument indexes used in IF: [translated ? <2> : <1>])
#
# For easier understanding: <val/string> - value/encoded-string* as "%<val>$s"
# e.g. 'bingo' encoded* as 1074992263 => "%1074992263$s"; 1 => "%1$s"
# - "<bingo><1>" - bingo resource pack
# - "<bingo><X><1>" - RP-version equal check: <X>[version iteration, 3+]
# - "<bingo><3><X><1>" - RP-version equal or above check: <X>[as above]
# All above translate to "<2>"="%2$s" (2nd argument), in [en_us] lang-file
# 
# *NeunEinser's encoder: https://github.com/NeunEinser/translation-placeholder-namespace

#NEUN_SCRIPT uncomment
#tellraw @s[scores={bingo.resources=1}] ["\n\n\n\n\n", {"translate": "%1074992263$s%1$s", "with": [["", {"text": "The resourcepack is currently not enabled.", "color": "red"}, "\nIf there is a server resource pack in place, enable it and wait until the Mojang loading screen is done. Then click “re-check” down below.\n\nOtherwise, please download the Resourcepack ", {"text": "here", "color": "#00c3ff", "clickEvent": {"action": "open_url", "value": "https://github.com/NeunEinser/bingo/releases/download/{NEUN_SCRIPT:version}/Fetchr-{NEUN_SCRIPT:version}-resourcepack.zip"}}, " and enable it.\n\n[", {"text": "Re-check", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.resources"}}, "]"], ["", {"translate": "%1074992263$s%{NEUN_SCRIPT:rp_version}$s%1$s", "with": [["", {"translate": "%1074992263$s%3$s%3$s%1$s", "with": [["", {"text": "Incorrect resource pack version enabled.", "color": "red"}, "\nYou are using an incompatible version of the Fetchr resource pack.\n\nPlease download the correct version ", {"text": "here", "color": "#00c3ff", "clickEvent": {"action": "open_url", "value": "https://github.com/NeunEinser/bingo/releases/download/{NEUN_SCRIPT:version}/Fetchr-{NEUN_SCRIPT:version}-resourcepack.zip"}}, ", enable it and click “re-check” down below.\n\nIf the resource pack was applied automatically through a server resource pack, please inform the server admin to update the server resource pack.\n\n[", {"text": "Re-check", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.resources"}}, "]"], ["", {"translate": "bingo.resourcepack_check.wrong_version.title", "color": "red"}, "\n", {"translate": "bingo.resourcepack_check.wrong_version.description", "with": [{"translate": "bingo.resourcepack_check.wrong_version.link", "color": "#00c3ff", "clickEvent": {"action": "open_url", "value": "https://github.com/NeunEinser/bingo/releases/download/{NEUN_SCRIPT:version}/Fetchr-{NEUN_SCRIPT:version}-resourcepack.zip"}}]}, "\n\n", {"translate": "bingo.resourcepack_check.wrong_version.server"}, "\n\n[", {"translate": "bingo.resourcepack_check.wrong_version.recheck", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.resources"}}, "]"]]}], ["", {"translate": "bingo.resourcepack_check.go_to_lobby.part1", "color": "green"}, "\n", {"translate": "bingo.resourcepack_check.go_to_lobby.part2", "with": [{"translate": "bingo.resourcepack_check.go_to_lobby.click", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.resources set 91"}}]}]]}]]}]

#NEUN_SCRIPT remove
tellraw @s[scores={bingo.resources=1}] ["\n\n\n\n\n", {"translate": "%1074992263$s%1$s", "with": [["",{"text": "The resourcepack is currently not enabled.", "color": "red"}, "\nThis is not a release version, thus no resource pack download can be provided. You can get the resource pack from master as well, just like you did with the data pack. You will need to download and apply the NegativeSpaceFont linked in readme manually as well, though.\n\nIf you want to play the release version, please follow the instructions on ", {"text": "this page", "color": "#00c3ff", "clickEvent": {"action": "open_url", "value": "https://github.com/NeunEinser/bingo/releases"}}, "."], ["", {"translate": "bingo.resourcepack_check.go_to_lobby.part1", "color": "green"}, "\n", {"translate": "bingo.resourcepack_check.go_to_lobby.part2", "with": [{"translate": "bingo.resourcepack_check.go_to_lobby.click", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.resources set 91"}}]}]]}]

# Validate checked players, reenable trigger
scoreboard players enable @a[tag=bingo.resourcepack_check] bingo.resources
scoreboard players set @s[scores={bingo.resources=1}] bingo.resources 0
tag @s[scores={bingo.resources=91}] remove bingo.resourcepack_check
execute if score @s bingo.resources matches 91 run function bingo:util/go_to_lobby
#endregion

# Assign each player a unique ID
execute if score @s bingo.reconnect matches 1.. run function #bingo:player_reconnect
execute unless score @s bingo.id matches -2147483648.. run function #bingo:new_player

# custom hud
execute if entity @s[predicate=!bingo:is_in_overworld] in bingo:lobby run function bingo:custom_hud/tick

# End
scoreboard players operation @s bingo.prev_x_pos = $tick/player.x bingo.tmp
scoreboard players operation @s bingo.prev_y_pos = $tick/player.y bingo.tmp
scoreboard players operation @s bingo.prev_z_pos = $tick/player.z bingo.tmp
scoreboard players operation @s bingo.prev_rot = $tick/player.rot bingo.tmp