execute if score @s fzsd.module.interactor.trigger matches -2300 if data storage fzsd:perm {last_spawn_point:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/last_spawn_point/private_message
execute if score @s fzsd.module.interactor.trigger matches -2300 unless data storage fzsd:perm {last_spawn_point:1} run function #fzsd:module/last_spawn_point/private_message