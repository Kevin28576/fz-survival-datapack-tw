##### 使用方式，形如：tellraw @a [{"nbt": "fzsd.exception.load_without_install_exception", "interpret": true, "storage": "fzsd:logger"}, {"text": "計分板"}]

## 根
data modify storage fzsd:logger fzsd.root set value '[{"text": "", "color": "white"}, {"text": "[", "color": "dark_gray"}, {"text": "FZSD", "color": "gold"}, {"text": "]", "color": "dark_gray"}]'

## 不同日誌等級
### error 800
data modify storage fzsd:logger fzsd.level.error set value '[{"text": "", "color": "red"}, {"nbt": "root", "interpret": true, "storage": "fzsd:logger"}, {"text": "[錯誤]"}]'
### alert 600
data modify storage fzsd:logger fzsd.level.alert set value '[{"text": "", "color": "yellow"}, {"nbt": "fzsd.root", "interpret": true, "storage": "fzsd:logger"}, {"text": "[提醒]"}]'
### info 500
data modify storage fzsd:logger fzsd.level.info set value '[{"text": "", "color": "green"}, {"nbt": "fzsd.root", "interpret": true, "storage": "fzsd:logger"}, {"text": "[資訊]"}]'
### debug 400
data modify storage fzsd:logger fzsd.level.debug set value '[{"text": "", "color": "dark_aqua"}, {"nbt": "fzsd.root", "interpret": true, "storage": "fzsd:logger"}, {"text": "[偵錯]"}]'
### fine 300
data modify storage fzsd:logger fzsd.level.fine set value '[{"text": "", "color": "gray"}, {"nbt": "fzsd.root", "interpret": true, "storage": "fzsd:logger"}, {"text": "[詳細]"}]'

## 異常
data modify storage fzsd:logger fzsd.exception.load_without_install_exception set value '[{"nbt": "fzsd.level.error", "interpret": true, "storage": "fzsd:logger"}, {"text": "擴展在未安裝時被載入："}]'

## 首次安裝時日誌等級預設為一般資訊
execute unless data storage fzsd:logger fzsd.levels.current run data modify storage fzsd:logger fzsd.levels.current set value 500

## 讀取日誌等級存入快取
execute store result score fzsd.logger.level fzsd.variable.integer run data get storage fzsd:logger fzsd.levels.current

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝系統擴展：日誌等級"}]