#### 註冊總覽計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.general fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.general", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.general", "objective": "fzsd.variable.integer"}}]

#### 註冊活躍度計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.activation fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.activation", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.activation", "objective": "fzsd.variable.integer"}}]

#### 註冊飛行距離計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.aviating_distance fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.aviating_distance", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.aviating_distance", "objective": "fzsd.variable.integer"}}]

#### 註冊抖M榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.damage_taken fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.placement_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.damage_taken", "objective": "fzsd.variable.integer"}}]

#### 註冊死亡榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.death_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.death_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.death_count", "objective": "fzsd.variable.integer"}}]

#### 註冊挖掘榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.dig_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.dig_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.dig_count", "objective": "fzsd.variable.integer"}}]

#### 註冊釣魚榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.fishing_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.fishing_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.fishing_count", "objective": "fzsd.variable.integer"}}]

#### 註冊擊殺榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.kill_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "注册击"}, {"nbt": "fzsd.module.scoreboard.text.kill_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.kill_count", "objective": "fzsd.variable.integer"}}]

#### 註冊交易榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.trade_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.trade_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.trade_count", "objective": "fzsd.variable.integer"}}]

#### 註冊放置榜計分板id
function #fzsd:calculation/highest_id_add_1
scoreboard players operation fzsd.module.scoreboard.display.id.placement_count fzsd.variable.integer = fzsd.module.scoreboard.display.highest_id fzsd.variable.integer
##### 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "註冊"}, {"nbt": "fzsd.module.scoreboard.text.placement_count", "interpret": true, "storage": "fzsd:module"}, {"text": "id為："}, {"score": {"name": "fzsd.module.scoreboard.display.id.placement_count", "objective": "fzsd.variable.integer"}}]
