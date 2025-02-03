execute store success storage fzsd:version fzsd.need_update byte 1 run data merge storage fzsd:version {fzsd: {version: '3.1.14'}}
execute if data storage fzsd:version fzsd{need_update: 1b} run function fzsd:system/update
function fzsd:system/carpet/try_load_fzsd_score
function #fzsd:load
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "FZ Survival Data Pack，目前版本：", "color": "gold"}, {"nbt":"fzsd.version", "storage": "fzsd:version", "color": "red"}]
