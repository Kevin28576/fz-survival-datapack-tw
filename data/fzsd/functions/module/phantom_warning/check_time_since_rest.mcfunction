# TODO: 數字有待商榷
## @s this player
function #fzsd:api/get_time_since_rest
execute if score fzsd.var.cache fzsd.variable.integer matches 61766.. if entity @s[tag=!fzsd.ignore_phantom_warning] run function #fzsd:module/phantom_warning/send_phantom_warning