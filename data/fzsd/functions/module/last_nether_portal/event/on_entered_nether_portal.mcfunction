execute if predicate fzsd:in_dimension_overworld run scoreboard players set @s fzsd.module.last_nether_portal.dimension 0
execute if predicate fzsd:in_dimension_the_nether run scoreboard players set @s fzsd.module.last_nether_portal.dimension -1
execute store result score @s fzsd.module.last_nether_portal.x run data get entity @s Pos[0]
execute store result score @s fzsd.module.last_nether_portal.y run data get entity @s Pos[1]
execute store result score @s fzsd.module.last_nether_portal.z run data get entity @s Pos[2]