## 標記為已安裝
data modify storage fzsd:install fzsd.global set value 1b

## 紀錄
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "安裝完成！"}]