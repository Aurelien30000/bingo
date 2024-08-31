#> fetchr:game/start/player_init
#
# This function is responsible for properly setting everything for the players
#
# @within function fetchr:game/start/start_game

execute rotated as @s run teleport ~ ~ ~
tellraw @s {"translate": "fetchr.game.start.countdown_completed"}
function fetchr:game/menu/print_with_hint
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1

effect clear @s
clear @s
gamemode survival @s
experience set @s 0 levels
experience set @s 0 points

# NETHER SPECIFIC - start
# ARMOR
item replace entity @a[team=fetchr.light_blue] armor.head with minecraft:leather_helmet[dyed_color=5636095] 1
item replace entity @a[team=fetchr.light_blue] armor.chest with minecraft:leather_chestplate[dyed_color=5636095] 1
item replace entity @a[team=fetchr.light_blue] armor.legs with minecraft:leather_leggings[dyed_color=5636095] 1
item replace entity @a[team=fetchr.light_blue] armor.feet with minecraft:leather_boots[dyed_color=5636095] 1

item replace entity @a[team=fetchr.black] armor.head with minecraft:leather_helmet[dyed_color=0] 1
item replace entity @a[team=fetchr.black] armor.chest with minecraft:leather_chestplate[dyed_color=0] 1
item replace entity @a[team=fetchr.black] armor.legs with minecraft:leather_leggings[dyed_color=0] 1
item replace entity @a[team=fetchr.black] armor.feet with minecraft:leather_boots[dyed_color=0] 1

item replace entity @a[team=fetchr.blue] armor.head with minecraft:leather_helmet[dyed_color=5592575] 1
item replace entity @a[team=fetchr.blue] armor.chest with minecraft:leather_chestplate[dyed_color=5592575] 1
item replace entity @a[team=fetchr.blue] armor.legs with minecraft:leather_leggings[dyed_color=5592575] 1
item replace entity @a[team=fetchr.blue] armor.feet with minecraft:leather_boots[dyed_color=5592575] 1

item replace entity @a[team=fetchr.cyan] armor.head with minecraft:leather_helmet[dyed_color=43690] 1
item replace entity @a[team=fetchr.cyan] armor.chest with minecraft:leather_chestplate[dyed_color=43690] 1
item replace entity @a[team=fetchr.cyan] armor.legs with minecraft:leather_leggings[dyed_color=43690] 1
item replace entity @a[team=fetchr.cyan] armor.feet with minecraft:leather_boots[dyed_color=43690] 1

item replace entity @a[team=fetchr.dark_blue] armor.head with minecraft:leather_helmet[dyed_color=10] 1
item replace entity @a[team=fetchr.dark_blue] armor.chest with minecraft:leather_chestplate[dyed_color=10] 1
item replace entity @a[team=fetchr.dark_blue] armor.legs with minecraft:leather_leggings[dyed_color=10] 1
item replace entity @a[team=fetchr.dark_blue] armor.feet with minecraft:leather_boots[dyed_color=10] 1

item replace entity @a[team=fetchr.dark_gray] armor.head with minecraft:leather_helmet[dyed_color=5592405] 1
item replace entity @a[team=fetchr.dark_gray] armor.chest with minecraft:leather_chestplate[dyed_color=5592405] 1
item replace entity @a[team=fetchr.dark_gray] armor.legs with minecraft:leather_leggings[dyed_color=5592405] 1
item replace entity @a[team=fetchr.dark_gray] armor.feet with minecraft:leather_boots[dyed_color=5592405] 1

item replace entity @a[team=fetchr.green] armor.head with minecraft:leather_helmet[dyed_color=43520] 1
item replace entity @a[team=fetchr.green] armor.chest with minecraft:leather_chestplate[dyed_color=43520] 1
item replace entity @a[team=fetchr.green] armor.legs with minecraft:leather_leggings[dyed_color=43520] 1
item replace entity @a[team=fetchr.green] armor.feet with minecraft:leather_boots[dyed_color=43520] 1

item replace entity @a[team=fetchr.purple] armor.head with minecraft:leather_helmet[dyed_color=11141290] 1
item replace entity @a[team=fetchr.purple] armor.chest with minecraft:leather_chestplate[dyed_color=11141290] 1
item replace entity @a[team=fetchr.purple] armor.legs with minecraft:leather_leggings[dyed_color=11141290] 1
item replace entity @a[team=fetchr.purple] armor.feet with minecraft:leather_boots[dyed_color=11141290] 1

item replace entity @a[team=fetchr.dark_red] armor.head with minecraft:leather_helmet[dyed_color=11141120] 1
item replace entity @a[team=fetchr.dark_red] armor.chest with minecraft:leather_chestplate[dyed_color=11141120] 1
item replace entity @a[team=fetchr.dark_red] armor.legs with minecraft:leather_leggings[dyed_color=11141120] 1
item replace entity @a[team=fetchr.dark_red] armor.feet with minecraft:leather_boots[dyed_color=11141120] 1

item replace entity @a[team=fetchr.orange] armor.head with minecraft:leather_helmet[dyed_color=16755200] 1
item replace entity @a[team=fetchr.orange] armor.chest with minecraft:leather_chestplate[dyed_color=16755200] 1
item replace entity @a[team=fetchr.orange] armor.legs with minecraft:leather_leggings[dyed_color=16755200] 1
item replace entity @a[team=fetchr.orange] armor.feet with minecraft:leather_boots[dyed_color=16755200] 1

item replace entity @a[team=fetchr.gray] armor.head with minecraft:leather_helmet[dyed_color=11184810] 1
item replace entity @a[team=fetchr.gray] armor.chest with minecraft:leather_chestplate[dyed_color=11184810] 1
item replace entity @a[team=fetchr.gray] armor.legs with minecraft:leather_leggings[dyed_color=11184810] 1
item replace entity @a[team=fetchr.gray] armor.feet with minecraft:leather_boots[dyed_color=11184810] 1

item replace entity @a[team=fetchr.lime] armor.head with minecraft:leather_helmet[dyed_color=5635925] 1
item replace entity @a[team=fetchr.lime] armor.chest with minecraft:leather_chestplate[dyed_color=5635925] 1
item replace entity @a[team=fetchr.lime] armor.legs with minecraft:leather_leggings[dyed_color=5635925] 1
item replace entity @a[team=fetchr.lime] armor.feet with minecraft:leather_boots[dyed_color=5635925] 1

item replace entity @a[team=fetchr.magenta] armor.head with minecraft:leather_helmet[dyed_color=16733695] 1
item replace entity @a[team=fetchr.magenta] armor.chest with minecraft:leather_chestplate[dyed_color=16733695] 1
item replace entity @a[team=fetchr.magenta] armor.legs with minecraft:leather_leggings[dyed_color=16733695] 1
item replace entity @a[team=fetchr.magenta] armor.feet with minecraft:leather_boots[dyed_color=16733695] 1

item replace entity @a[team=fetchr.red] armor.head with minecraft:leather_helmet[dyed_color=1045845] 1
item replace entity @a[team=fetchr.red] armor.chest with minecraft:leather_chestplate[dyed_color=1045845] 1
item replace entity @a[team=fetchr.red] armor.legs with minecraft:leather_leggings[dyed_color=1045845] 1
item replace entity @a[team=fetchr.red] armor.feet with minecraft:leather_boots[dyed_color=1045845] 1

item replace entity @a[team=fetchr.white] armor.head with minecraft:leather_helmet[dyed_color=16777215] 1
item replace entity @a[team=fetchr.white] armor.chest with minecraft:leather_chestplate[dyed_color=16777215] 1
item replace entity @a[team=fetchr.white] armor.legs with minecraft:leather_leggings[dyed_color=16777215] 1
item replace entity @a[team=fetchr.white] armor.feet with minecraft:leather_boots[dyed_color=16777215] 1

item replace entity @a[team=fetchr.yellow] armor.head with minecraft:leather_helmet[dyed_color=16777045] 1
item replace entity @a[team=fetchr.yellow] armor.chest with minecraft:leather_chestplate[dyed_color=16777045] 1
item replace entity @a[team=fetchr.yellow] armor.legs with minecraft:leather_leggings[dyed_color=16777045] 1
item replace entity @a[team=fetchr.yellow] armor.feet with minecraft:leather_boots[dyed_color=16777045] 1

# STUFF
item replace entity @s hotbar.0 with minecraft:stone_sword
item replace entity @s hotbar.1 with minecraft:golden_carrot 16
item replace entity @s hotbar.2 with minecraft:stone_pickaxe
item replace entity @s hotbar.3 with minecraft:netherrack 64
item replace entity @s hotbar.7 with minecraft:saddle
item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick[unbreakable={}]

# EXTRA STUFF
item replace entity @s hotbar.4 with minecraft:respawn_anchor 1
item replace entity @s inventory.19 with minecraft:carrot 64
# NETHER SPECIFIC - end

execute if score $allow_spectating fetchr.settings matches 1 run scoreboard players enable @s fetchr.spectator
execute if score $blind_mode fetchr.state matches 1 run scoreboard players enable @s fetchr.reveal_card
