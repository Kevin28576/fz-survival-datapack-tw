
## debug 400
data modify storage fzsd:logger fzsd.levels.current set value 400
execute store result score fzsd.logger.level fzsd.variable.integer run data get storage fzsd:logger fzsd.levels.current

## 紀錄
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "日誌等級設為偵錯模式"}]