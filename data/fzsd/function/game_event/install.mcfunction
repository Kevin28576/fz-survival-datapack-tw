## 事件觸發
scoreboard objectives add fzsd.event.aviating_distance minecraft.custom:aviate_one_cm
scoreboard objectives add fzsd.event.damage_taken minecraft.custom:damage_taken
scoreboard objectives add fzsd.event.death_count deathCount
scoreboard objectives add fzsd.event.leave_game minecraft.custom:leave_game
### 由 #fzsd:game_event/on_tick 賦值
scoreboard objectives add fzsd.event.play_ticks dummy
scoreboard objectives add fzsd.event.villager_trade minecraft.custom:traded_with_villager

## 使用工具
scoreboard objectives add fzsd.event.used_tool.dig_offset dummy
scoreboard objectives add fzsd.event.used_tool.iron_axe minecraft.used:iron_axe
scoreboard objectives add fzsd.event.used_tool.stone_axe minecraft.used:stone_axe
scoreboard objectives add fzsd.event.used_tool.golden_axe minecraft.used:golden_axe
scoreboard objectives add fzsd.event.used_tool.wooden_axe minecraft.used:wooden_axe
scoreboard objectives add fzsd.event.used_tool.diamond_axe minecraft.used:diamond_axe
scoreboard objectives add fzsd.event.used_tool.netherite_axe minecraft.used:netherite_axe
scoreboard objectives add fzsd.event.used_tool.iron_hoe minecraft.used:iron_hoe
scoreboard objectives add fzsd.event.used_tool.stone_hoe minecraft.used:stone_hoe
scoreboard objectives add fzsd.event.used_tool.golden_hoe minecraft.used:golden_hoe
scoreboard objectives add fzsd.event.used_tool.wooden_hoe minecraft.used:wooden_hoe
scoreboard objectives add fzsd.event.used_tool.diamond_hoe minecraft.used:diamond_hoe
scoreboard objectives add fzsd.event.used_tool.netherite_hoe minecraft.used:netherite_hoe
scoreboard objectives add fzsd.event.used_tool.iron_pickaxe minecraft.used:iron_pickaxe
scoreboard objectives add fzsd.event.used_tool.stone_pickaxe minecraft.used:stone_pickaxe
scoreboard objectives add fzsd.event.used_tool.golden_pickaxe minecraft.used:golden_pickaxe
scoreboard objectives add fzsd.event.used_tool.wooden_pickaxe minecraft.used:wooden_pickaxe
scoreboard objectives add fzsd.event.used_tool.diamond_pickaxe minecraft.used:diamond_pickaxe
scoreboard objectives add fzsd.event.used_tool.netherite_pickaxe minecraft.used:netherite_pickaxe
scoreboard objectives add fzsd.event.used_tool.shears minecraft.used:shears
scoreboard objectives add fzsd.event.used_tool.iron_shovel minecraft.used:iron_shovel
scoreboard objectives add fzsd.event.used_tool.stone_shovel minecraft.used:stone_shovel
scoreboard objectives add fzsd.event.used_tool.golden_shovel minecraft.used:golden_shovel
scoreboard objectives add fzsd.event.used_tool.wooden_shovel minecraft.used:wooden_shovel
scoreboard objectives add fzsd.event.used_tool.diamond_shovel minecraft.used:diamond_shovel
scoreboard objectives add fzsd.event.used_tool.netherite_shovel minecraft.used:netherite_shovel
scoreboard objectives add fzsd.event.used_tool.iron_sword minecraft.used:iron_sword
scoreboard objectives add fzsd.event.used_tool.stone_sword minecraft.used:stone_sword
scoreboard objectives add fzsd.event.used_tool.golden_sword minecraft.used:golden_sword
scoreboard objectives add fzsd.event.used_tool.wooden_sword minecraft.used:wooden_sword
scoreboard objectives add fzsd.event.used_tool.diamond_sword minecraft.used:diamond_sword
scoreboard objectives add fzsd.event.used_tool.netherite_sword minecraft.used:netherite_sword

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝系統擴展：遊戲事件"}]