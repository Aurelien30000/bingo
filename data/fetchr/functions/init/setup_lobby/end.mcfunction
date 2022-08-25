#> fetchr:init/setup_lobby/end
#
# This function is called at the end, after all structures were placed
# successfully.
#
# @within function fetchr:init/setup_lobby/spawn_structures
# @context
#  	entity structure spawner
# 	positon @s
# 	dimension fetchr:lobby

setblock -1 3 -17 minecraft:air
kill @s

setblock ~-1 3 ~-1 minecraft:structure_block[mode=load]{mode: "LOAD", name: "fetchr:lobby_end"}
setblock ~-1 4 ~-1 minecraft:redstone_block

# Spawn machinery at hardcoded position
setblock -3 1 -3 minecraft:structure_block[mode=load]{mode: "LOAD", name: "fetchr:machinery", posX: 1, posZ: 1}
setblock -3 2 -3 minecraft:redstone_block
summon minecraft:marker -3 5 7 {Tags: ["fetchr.lobby_sign", "fetchr.sign_west"], data: {Text1: '{"translate":"fetchr.lobby.machinery.sign.line1", "bold":true, "color":"#8eedeb"}', Text2: '{"translate": "fetchr.lobby.machinery.sign.line2", "color":"#8eedeb"}', Text3: '{"translate": "fetchr.lobby.machinery.sign.line3", "color":"#8eedeb"}', Text4: '{"translate": "fetchr.lobby.machinery.sign.line4", "color":"#8eedeb"}'}}
data modify block -4 1 -3 ignoreEntities set value true

## Workaround for https://bugs.mojang.com/browse/MC-224771
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier
setblock -3 2 -3 minecraft:redstone_block
setblock -3 2 -3 minecraft:barrier

setblock -3 1 -3 minecraft:barrier

forceload remove all
forceload add 0 0