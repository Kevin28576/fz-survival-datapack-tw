execute if score @s fzsd.module.interactor.trigger matches -2000 if data storage fzsd:perm {here:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/here/private_message
execute if score @s fzsd.module.interactor.trigger matches -2000 unless data storage fzsd:perm {here:1} run function #fzsd:module/here/private_message
execute if score @s fzsd.module.interactor.trigger matches -2010 if data storage fzsd:perm {here:1} if entity @s[tag=fzsd.admin] run function #fzsd:module/here/global_message
execute if score @s fzsd.module.interactor.trigger matches -2010 unless data storage fzsd:perm {here:1} run function #fzsd:module/here/global_message
