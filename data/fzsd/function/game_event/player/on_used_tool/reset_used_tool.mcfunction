scoreboard players set @s fzsd.event.used_tool.dig_offset 0
scoreboard players set @s fzsd.event.used_tool.diamond_axe 0
scoreboard players set @s fzsd.event.used_tool.diamond_hoe 0
scoreboard players set @s fzsd.event.used_tool.diamond_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.diamond_shovel 0
scoreboard players set @s fzsd.event.used_tool.diamond_sword 0
scoreboard players set @s fzsd.event.used_tool.golden_axe 0
scoreboard players set @s fzsd.event.used_tool.golden_hoe 0
scoreboard players set @s fzsd.event.used_tool.golden_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.golden_shovel 0
scoreboard players set @s fzsd.event.used_tool.golden_sword 0
scoreboard players set @s fzsd.event.used_tool.iron_axe 0
scoreboard players set @s fzsd.event.used_tool.iron_hoe 0
scoreboard players set @s fzsd.event.used_tool.iron_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.iron_shovel 0
scoreboard players set @s fzsd.event.used_tool.iron_sword 0
scoreboard players set @s fzsd.event.used_tool.netherite_axe 0
scoreboard players set @s fzsd.event.used_tool.netherite_hoe 0
scoreboard players set @s fzsd.event.used_tool.netherite_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.netherite_shovel 0
scoreboard players set @s fzsd.event.used_tool.netherite_sword 0
scoreboard players set @s fzsd.event.used_tool.shears 0
scoreboard players set @s fzsd.event.used_tool.stone_axe 0
scoreboard players set @s fzsd.event.used_tool.stone_hoe 0
scoreboard players set @s fzsd.event.used_tool.stone_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.stone_shovel 0
scoreboard players set @s fzsd.event.used_tool.stone_sword 0
scoreboard players set @s fzsd.event.used_tool.wooden_axe 0
scoreboard players set @s fzsd.event.used_tool.wooden_hoe 0
scoreboard players set @s fzsd.event.used_tool.wooden_pickaxe 0
scoreboard players set @s fzsd.event.used_tool.wooden_shovel 0
scoreboard players set @s fzsd.event.used_tool.wooden_sword 0

## 詳細
execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "重置了玩家"}, {"selector": "@s"}, {"text": "的 used_tool 計分板"}]