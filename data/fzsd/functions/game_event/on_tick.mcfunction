scoreboard players add @a[predicate=fzsd:is_real_player] fzsd.event.play_ticks 1
function #fzsd:game_event/on_tick
schedule function fzsd:game_event/on_tick 1t replace