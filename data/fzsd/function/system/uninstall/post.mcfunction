## 標記為已解除安裝
data modify storage fzsd:install fzsd.global set value 0b

## 紀錄
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "卸载完成！"}]