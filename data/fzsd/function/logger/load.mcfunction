# 調用者：#fzsd:logger/init

## 讀取日誌等級存入快取
execute store result score fzsd.logger.level fzsd.variable.integer run data get storage fzsd:logger fzsd.levels.current

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已載入系統擴展：日誌等級"}]