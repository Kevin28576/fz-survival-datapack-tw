execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @a[tag=!fzsd.ignore_sweeper_message] [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "1分鐘後清理掉落物"}]
execute as @a[tag=!fzsd.ignore_sweeper_sound] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
bossbar set fzsd:sweeper color yellow
bossbar set fzsd:sweeper value 60
schedule function fzsd:module/sweeper/timer/30s 30s