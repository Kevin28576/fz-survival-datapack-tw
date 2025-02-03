# 取得間隔時間
scoreboard players set fzsd.sweeper.interval_time fzsd.variable.integer 3000
scoreboard players operation fzsd.sweeper.interval_time fzsd.variable.integer += @s fzsd.module.interactor.trigger
scoreboard players operation fzsd.sweeper.interval_time fzsd.variable.integer *= -1 fzsd.variable.integer
# 設為顯示
bossbar set fzsd:sweeper visible true