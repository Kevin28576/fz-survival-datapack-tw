execute if score @s fzsd.module.interactor.trigger matches 3400 run tag @s add fzsd.ignore_sweeper_bossbar
execute if score @s fzsd.module.interactor.trigger matches 3400 run tag @s add fzsd.ignore_sweeper_bossbar
execute if score @s fzsd.module.interactor.trigger matches 3401 run tag @s remove fzsd.ignore_sweeper_bossbar
execute if score @s fzsd.module.interactor.trigger matches 3401 run tag @s remove fzsd.ignore_sweeper_bossbar
execute if score @s fzsd.module.interactor.trigger matches 3500 run tag @s add fzsd.ignore_sweeper_sound
execute if score @s fzsd.module.interactor.trigger matches 3500 run tag @s add fzsd.ignore_sweeper_sound
execute if score @s fzsd.module.interactor.trigger matches 3501 run tag @s remove fzsd.ignore_sweeper_sound
execute if score @s fzsd.module.interactor.trigger matches 3501 run tag @s remove fzsd.ignore_sweeper_sound
execute if score @s fzsd.module.interactor.trigger matches 3600 run tag @s add fzsd.ignore_sweeper_message
execute if score @s fzsd.module.interactor.trigger matches 3600 run tag @s add fzsd.ignore_sweeper_message
execute if score @s fzsd.module.interactor.trigger matches 3601 run tag @s remove fzsd.ignore_sweeper_message
execute if score @s fzsd.module.interactor.trigger matches 3601 run tag @s remove fzsd.ignore_sweeper_message
execute if score @s fzsd.module.interactor.trigger matches -3300 if data storage fzsd:perm {sweeper:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/sweeper/sweep
execute if score @s fzsd.module.interactor.trigger matches -3300 unless data storage fzsd:perm {sweeper:1} run function #fzsd:module/sweeper/sweep
execute if score @s fzsd.module.interactor.trigger matches -3000 if data storage fzsd:perm {sweeper:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/sweeper/stop_loop
execute if score @s fzsd.module.interactor.trigger matches -3000 unless data storage fzsd:perm {sweeper:1} run function #fzsd:module/sweeper/stop_loop
execute if score @s fzsd.module.interactor.trigger matches -3240..-3010 if data storage fzsd:perm {sweeper:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/sweeper/start_loop
execute if score @s fzsd.module.interactor.trigger matches -3240..-3010 unless data storage fzsd:perm {sweeper:1} run function #fzsd:module/sweeper/start_loop
