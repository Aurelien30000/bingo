#> fetchr:game/skybox/create_skybox/place_dirt
#
# Places dirt if spawn is above water, or if spawn is below sea level
#
# @within function fetchr:game/skybox/create_skybox/internal
# @context
# 	entity Spawn marker
# 	position the lowest non-air block with sky access at spawn

teleport @s ~ ~ ~
#>
# @private
#declare score_holder $game/start/place_dirt.y
execute store result score $game/start/place_dirt.y fetchr.tmp run data get entity @s Pos[1]

execute if block ~ ~-1 ~ #fetchr:liquids run setblock ~ ~-1 ~ minecraft:dirt
execute if score $game/start/place_dirt.y fetchr.tmp matches ..31 run fill ~ ~ ~ ~ 30 ~ minecraft:dirt
execute if score $game/start/place_dirt.y fetchr.tmp matches ..31 run setblock ~ 31 ~ minecraft:coarse_dirt
execute if score $game/start/place_dirt.y fetchr.tmp matches ..31 run fill ~-7 31 ~-7 ~8 31 ~8 minecraft:dirt replace #fetchr:air

# NETHER SPECIFIC - start
fill ~ 0 ~ ~ 30 ~ minecraft:dirt replace #fetchr:liquids
fill ~ 31 ~ ~ 31 ~ minecraft:coarse_dirt replace #fetchr:liquids
# NETHER SPECIFIC - end

fill ~-7 ~-2 ~-7 ~8 ~8 ~8 minecraft:snow_block replace minecraft:powder_snow
