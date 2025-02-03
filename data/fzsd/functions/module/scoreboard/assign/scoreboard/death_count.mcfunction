scoreboard players add @s fzsd.module.scoreboard.display.death_count 1
execute if score @s fzsd.module.scoreboard.display.death_count matches ..-1 run scoreboard players set @s fzsd.module.scoreboard.display.death_count 2147483647
scoreboard players add fzsd.module.scoreboard.total.death_count fzsd.module.scoreboard.assign.general 1
execute if score fzsd.module.scoreboard.total.death_count fzsd.module.scoreboard.assign.general matches ..-1 run scoreboard players set fzsd.module.scoreboard.total.death_count fzsd.module.scoreboard.assign.general 2147483647