## 事件觸發
scoreboard objectives remove fzsd.event.aviating_distance
scoreboard objectives remove fzsd.event.damage_taken
scoreboard objectives remove fzsd.event.death_count
scoreboard objectives remove fzsd.event.leave_game
scoreboard objectives remove fzsd.event.play_ticks
scoreboard objectives remove fzsd.event.villager_trade

## 使用工具
scoreboard objectives remove fzsd.event.used_tool.dig_offset
scoreboard objectives remove fzsd.event.used_tool.iron_axe
scoreboard objectives remove fzsd.event.used_tool.stone_axe
scoreboard objectives remove fzsd.event.used_tool.golden_axe
scoreboard objectives remove fzsd.event.used_tool.wooden_axe
scoreboard objectives remove fzsd.event.used_tool.diamond_axe
scoreboard objectives remove fzsd.event.used_tool.netherite_axe
scoreboard objectives remove fzsd.event.used_tool.iron_hoe
scoreboard objectives remove fzsd.event.used_tool.stone_hoe
scoreboard objectives remove fzsd.event.used_tool.golden_hoe
scoreboard objectives remove fzsd.event.used_tool.wooden_hoe
scoreboard objectives remove fzsd.event.used_tool.diamond_hoe
scoreboard objectives remove fzsd.event.used_tool.netherite_hoe
scoreboard objectives remove fzsd.event.used_tool.iron_pickaxe
scoreboard objectives remove fzsd.event.used_tool.stone_pickaxe
scoreboard objectives remove fzsd.event.used_tool.golden_pickaxe
scoreboard objectives remove fzsd.event.used_tool.wooden_pickaxe
scoreboard objectives remove fzsd.event.used_tool.diamond_pickaxe
scoreboard objectives remove fzsd.event.used_tool.netherite_pickaxe
scoreboard objectives remove fzsd.event.used_tool.shears
scoreboard objectives remove fzsd.event.used_tool.iron_shovel
scoreboard objectives remove fzsd.event.used_tool.stone_shovel
scoreboard objectives remove fzsd.event.used_tool.golden_shovel
scoreboard objectives remove fzsd.event.used_tool.wooden_shovel
scoreboard objectives remove fzsd.event.used_tool.diamond_shovel
scoreboard objectives remove fzsd.event.used_tool.netherite_shovel
scoreboard objectives remove fzsd.event.used_tool.iron_sword
scoreboard objectives remove fzsd.event.used_tool.stone_sword
scoreboard objectives remove fzsd.event.used_tool.golden_sword
scoreboard objectives remove fzsd.event.used_tool.wooden_sword
scoreboard objectives remove fzsd.event.used_tool.diamond_sword
scoreboard objectives remove fzsd.event.used_tool.netherite_sword

schedule clear fzsd:game_event/on_tick

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝系統擴展：遊戲事件"}]