bossbar set fzsd:sweeper name [{"score": {"objective": "fzsd.variable.integer", "name": "fzsd.sweeper.bossbar.current_time"},"color": "#ff6100","underlined": true,"bold": true},{"text": "秒後清理掉落物","color": "#ffd900","bold": false}]
bossbar set fzsd:sweeper players @a[tag=!fzsd.ignore_sweeper_bossbar]
scoreboard players remove fzsd.sweeper.bossbar.current_time fzsd.variable.integer 1
schedule function fzsd:module/sweeper/bossbar 1s