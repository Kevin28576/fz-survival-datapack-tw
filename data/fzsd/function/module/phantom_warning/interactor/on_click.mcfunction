execute if score @s fzsd.module.interactor.trigger matches 4000 if data storage fzsd:perm {phantom_warning:1} if entity @s[tag=fzsd.admin] run tag @s add fzsd.ignore_phantom_warning
execute if score @s fzsd.module.interactor.trigger matches 4000 unless data storage fzsd:perm {phantom_warning:1} run tag @s add fzsd.ignore_phantom_warning
execute if score @s fzsd.module.interactor.trigger matches 4001 if data storage fzsd:perm {phantom_warning:1} if entity @s[tag=fzsd.admin] run tag @s remove fzsd.ignore_phantom_warning
execute if score @s fzsd.module.interactor.trigger matches 4001 unless data storage fzsd:perm {phantom_warning:1} run tag @s remove fzsd.ignore_phantom_warning
