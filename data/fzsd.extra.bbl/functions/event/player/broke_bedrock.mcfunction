# 見../advancement/broke_bedrock
## 詳細
execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：玩家"}, {"selector": "@s"}, {"text": "破基岩"}]

scoreboard players operation fzsd.var.score fzsd.variable.integer = @s fzsd.extra.bbl
function #fzsd.extra.bbl:event/broke_bedrock