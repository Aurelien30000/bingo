setblock -1 65 -6 minecraft:warped_wall_sign[facing=east]{Text1: '{"translate":"bingo.lobby.card_generation.from_seed.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/function bingo:card_generation/random_card"}}', Text2:'{"translate":"bingo.lobby.card_generation.from_seed.sign.line2", "bold":true, "color":"#8eedeb"}', Text3:'{"translate":"bingo.lobby.card_generation.from_seed.sign.line3", "bold":true, "color":"#8eedeb"}', Text4:'{"translate":"bingo.lobby.card_generation.from_seed.sign.line4", "bold":true, "color":"#8eedeb"}'}

setblock 1 65 -6 minecraft:warped_wall_sign[facing=west]{Text1: '{"translate":"bingo.lobby.card_generation.random_card.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/tellraw @s[scores={bingo.settings=2}] [{\\"translate\\": \\"bingo.lobby.card_generation.from_seed.instructions\\", \\"with\\": [{\\"translate\\": \\"bingo.lobby.card_generation.from_seed.instructions.link\\", \\"color\\":\\"#00c3ff\\", \\"clickEvent\\": {\\"action\\": \\"suggest_command\\", \\"value\\": \\"/trigger bingo.seed set \\"}}]}, \\"\\n\\", {\\"translate\\": \\"bingo.lobby.card_generation.from_seed.explanation\\", \\"italic\\": true, \\"color\\": \\"gray\\"}]"}}', Text2:'{"translate":"bingo.lobby.card_generation.random_card.sign.line2", "bold":true, "color":"#8eedeb"}', Text3:'{"translate":"bingo.lobby.card_generation.random_card.sign.line3", "bold":true, "color":"#8eedeb"}', Text4:'{"translate":"bingo.lobby.card_generation.random_card.sign.line4", "bold":true, "color":"#8eedeb"}'}

setblock 7 65 2 minecraft:warped_wall_sign[facing=west]{Text1: '{"translate":"bingo.lobby.settings.player.tutorial.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/function bingo:lobby/player_settings/initialize_tutorial"}}', Text2:'{"translate":"bingo.lobby.settings.player.tutorial.sign.line2", "color":"#8eedeb"}', Text3:'{"translate":"bingo.lobby.settings.player.tutorial.sign.line3", "color":"#8eedeb"}', Text4:'{"translate":"bingo.lobby.settings.player.tutorial.sign.line4", "color":"#8eedeb"}'}

setblock 7 65 4 minecraft:warped_wall_sign[facing=west]{Text1: '{"translate":"bingo.lobby.settings.player.save.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.menu_page 0"}}', Text2:'{"translate":"bingo.lobby.settings.player.save.sign.line2", "color":"#8eedeb"}', Text3:'{"translate":"bingo.lobby.settings.player.save.sign.line3", "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/function bingo:lobby/player_settings/save/print_dialog"}}', Text4:'{"translate":"bingo.lobby.settings.player.save.sign.line4", "color":"#8eedeb"}'}

setblock 7 65 6 minecraft:warped_wall_sign[facing=west]{Text1: '{"translate":"bingo.lobby.settings.player.load.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.menu_page 0"}}', Text2:'{"translate":"bingo.lobby.settings.player.load.sign.line2", "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/function bingo:lobby/player_settings/load/print_dialog"}}', Text3:'{"translate":"bingo.lobby.settings.player.load.sign.line3", "color":"#8eedeb"}', Text4:'{"translate":"bingo.lobby.settings.player.load.sign.line4", "color":"#8eedeb"}'}

setblock 7 65 -2 minecraft:warped_wall_sign[facing=west]{Text1: '{"translate":"bingo.lobby.settings.preferences.sign.line1", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command","value":"/trigger bingo.pref set 1"}}', Text2:'{"translate":"bingo.lobby.settings.preferences.sign.line2", "bold":true, "color":"#8eedeb"}', Text3:'{"translate":"bingo.lobby.settings.preferences.sign.line3", "bold":true, "color":"#8eedeb"}', Text4:'{"translate":"bingo.lobby.settings.preferences.sign.line4", "bold":true, "color":"#8eedeb"}'}

setblock 7 65 -6 minecraft:warped_wall_sign[facing=west]{Text2: '{"text":"More Settings", "bold":true, "color":"#8eedeb", "clickEvent":{"action":"run_command", "value": "/tellraw @s [{\\"text\\": \\"Do you want to change future settings? \\"}, {\\"text\\": \\"[Yes]\\", \\"color\\": \\"green\\", \\"clickEvent\\": {\\"action\\": \\"run_command\\", \\"value\\": \\"/tellraw @s {\\\\\\"text\\\\\\":\\\\\\"Error accessing the future. Please talk to your local time machine operator.\\\\\\", \\\\\\"obfuscated\\\\\\": true}\\"}}, {\\"text\\": \\" [No]\\", \\"color\\": \\"red\\", \\"clickEvent\\": {\\"action\\": \\"run_command\\", \\"value\\": \\"/tellraw @s {\\\\\\"text\\\\\\":\\\\\\"Good decision. Who knows, maybe these settings are awful.\\\\\\"}\\"}}]"}}', Text3:'{"text":"Comming Soon", "bold":true, "color":"#8eedeb"}'}