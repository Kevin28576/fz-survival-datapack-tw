## 標記為已安裝
data modify storage fzsd:install fzsd.module.join_message set value 1b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝擴展：登入訊息"}]