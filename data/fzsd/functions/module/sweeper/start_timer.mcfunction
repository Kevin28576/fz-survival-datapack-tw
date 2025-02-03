execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 10 run function fzsd:module/sweeper/timer/10s
execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 30 run function fzsd:module/sweeper/timer/30s
execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 60 run function fzsd:module/sweeper/timer/1min
execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 120 run function fzsd:module/sweeper/timer/2min
execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 180 run function fzsd:module/sweeper/timer/3min
execute if score fzsd.sweeper.interval_time fzsd.variable.integer matches 240 run function fzsd:module/sweeper/timer/4min
scoreboard players operation fzsd.sweeper.bossbar.current_time fzsd.variable.integer = fzsd.sweeper.interval_time fzsd.variable.integer