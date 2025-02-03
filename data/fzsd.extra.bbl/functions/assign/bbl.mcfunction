# 見#fzsd.extra.bbl:event/broke_bedrock
## 如果運行時id不存在則註冊運行時id
execute unless score fzsd.module.scoreboard.display.bedrock_broken_count.id fzsd.variable.integer matches 0.. run function fzsd.extra.bbl:display/register_id
scoreboard players operation @s fzsd.module.scoreboard.display.bedrock_broken_count += fzsd.var.score fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.total.bedrock_broken_count fzsd.module.scoreboard.assign.general += fzsd.var.score fzsd.variable.integer
