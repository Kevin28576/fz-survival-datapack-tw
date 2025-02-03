execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @a[tag=!fzsd.ignore_sweeper_message] [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "4分鐘後清理掉落物"}]
execute as @a[tag=!fzsd.ignore_sweeper_sound] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
bossbar set fzsd:sweeper color green
bossbar set fzsd:sweeper value 50
schedule function fzsd:module/sweeper/timer/3min 60s