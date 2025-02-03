# 本目錄用於存放在事件中註冊的函數，並不用來新事件

execute if data storage fzsd:install fzsd.module{interactor: 1b} if entity @s[tag=!fzsd.ignore_interactor_headup_sneak, x_rotation = -90] run function #fzsd:module/interactor/event/on_start_interact