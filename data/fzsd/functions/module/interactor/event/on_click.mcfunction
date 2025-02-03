## 運行事件
function #fzsd:module/interactor/event/on_click
## 觸發器分數為正數時重新顯示控制器按鈕，為負數時不顯示
execute if score @s fzsd.module.interactor.trigger matches 1.. run function #fzsd:module/interactor/event/on_display