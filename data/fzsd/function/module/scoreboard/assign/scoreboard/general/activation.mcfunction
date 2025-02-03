## 為了擴充性，盡量想把這種硬編碼的欄位寫在同一個檔案裡方便覆蓋
## 但為了實現這一目標，在此處除了每次添加一次隊伍以外，暫時沒有找到其他好方法，不知道性能如何
team join fzsd.module.scoreboard.display.activation 總活躍時間

scoreboard players operation 總活躍時間 fzsd.module.scoreboard.display.general = fzsd.module.scoreboard.total.activation fzsd.module.scoreboard.assign.general
scoreboard players operation 總活躍時間 fzsd.module.scoreboard.display.activation = fzsd.module.scoreboard.total.activation fzsd.module.scoreboard.assign.general