# 開發文件

## 指引

- `函數`：指資料包 `<命名空間>/functions` 目錄下的 `.mcfunction` 文件  
- `標籤`：指資料包 `<命名空間>/tags` 目錄下的 `.json` 文件  
  - `覆蓋標籤並填入函數` 時，`replace` 設為 `true`  

    ```json
    {
        "replace": true,
        "values": ...
    }
    ```

  - `向標籤中註冊函數`時， `replace` 設為 `false`  

    ```json
    {
        "replace": false,
        "values": ...
    }
    ```

- ***函數和標籤是否能被擴展資料包成功覆蓋，取決於資料包加載順序***，請使用 `/datapack enable <xxx> after <xxx>` 指令，使您的擴展資料包在 FZ's Survival Datapack 之後加載  

## 基本要求

- 函數由兩個以上的函數調用，或由不同包下的函數調用，或需要作為接口開放給下游資料包時，應改用標籤調用！  
- 函數調用儘量不要使用 `function` 指令，應改在標籤中按順序調用！  

## 系統模組

### 頻繁使用的計算單元

- [`#fzsd:calculation/*`](data/fzsd/tags/functions/calculation/) 標籤通常用於執行簡單重複的計算任務  

### 事件模組

- 通常由**進度**觸發，觸發後調用同名的事件標籤  
- 在 [`#fzsd:game_event/(<...>/)on_<事件>`](data/fzsd/tags/functions/game_event/) 標籤中註冊觸發時需要調用的函數即可  

### 日誌模組

- 儲存庫中提供了日誌相關的代碼片段，位於 [`.vscode/settings.json`](.vscode/settings.json)  
- 暫時沒有找到方法在伺服端控制台輸出日誌，但會被記錄在客戶端  

#### 詳細 Fine

- 等級：300  
- 使用方法：  
  ```mcfunction
  execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日誌"}]
  ```

#### 偵錯 Debug

- 等級：400  
- 使用方法：  
  ```mcfunction
  execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日誌"}]
  ```

#### 信息 Info

- 等級：500  
- 使用方法：  
  ```mcfunction
  execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日誌"}]
  ```

#### 提醒 Alert

- 等級：600  
- 使用方法：  
  ```mcfunction
  execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @a [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日誌"}]
  ```

#### 意外 Exception

- 暫不提供  

#### 錯誤 Error

- 等級：800  
- 使用方法：  
  ```mcfunction
  execute if score fzsd.logger.level fzsd.variable.integer matches ..800 run tellraw @a [{"nbt": "fzsd.level.error", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日誌"}]
  ```

## 功能模組

### 控制器模組

#### 按鈕操作

1. 定義一個顯示按鈕時執行的函數，使用類似以下指令定義按鈕：  
    ```mcfunction
    tellraw @s {"text": "[按鈕]", "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set <觸發器分數>"}}
    ```
    - *觸發器分數為正數會重新向玩家發送交互按鈕，如不想重新發送，請使用負數*  
    - 大多數情況下，這裡的觸發器分數必須是唯一的  
    - 建議使用 `>10000` 的隨機數作為自定義按鈕的觸發器分數  

2. 在 [`#fzsd:module/interactor/event/on_display`](data/fzsd/tags/functions/module/interactor/display.json) 標籤中註冊上述函數  

3. 定義一個點擊按鈕時執行的函數，使用類似以下指令判斷玩家的觸發器分數，並執行操作：  
    ```mcfunction
    execute if score @s fzsd.module.interactor.trigger matches <min>..<max> run ...
    ```

4. 在 [`#fzsd:module/interactor/event/on_click`](data/fzsd/tags/functions/module/interactor/event/on_click.json) 標籤中註冊上述函數  

#### 其他標籤

- [`#fzsd:module/interactor/reset_trigger`](data/fzsd/tags/functions/module/interactor/reset_trigger.json) 標籤：重置玩家 `@s` 的觸發器計分板  

### 計分板模組

#### 自定義計分板顏色

- 資料包提供了所有計分板的16色命名函數  
- 使用方法：**覆蓋** [`#fzsd:module/scoreboard/display/set_text/<計分板名稱>`](data/fzsd/tags/functions/module/scoreboard/display/set_text/) 標籤，填入 [`fzsd:module/scoreboard/display/set_text/<計分板名稱>/<顏色名稱>`](data/fzsd/functions/module/scoreboard/display/set_text/) 函數  

#### 自定義計分板名稱

1. 定義一個設置計分板顏色、文本的函數，格式可參考 [`fzsd:module/scoreboard/display/set_text/general/*`](data/fzsd/functions/module/scoreboard/display/set_text/general/) 函數  
2. **覆蓋** [`#fzsd:module/scoreboard/display/set_text/<計分板名稱>`](data/fzsd/tags/functions/module/scoreboard/display/set_text/) 標籤，填入上述函數  

#### 擴展自己的計分板

1. 定義一個安裝函數，參考 [`fzsd:module/scoreboard/install`](data/fzsd/functions/module/scoreboard/install.mcfunction) 函數  
2. 在 [`#fzsd:module/scoreboard/install`](data/fzsd/tags/functions/module/scoreboard/install.json) 標籤中註冊該函數  
3. 按照“自定義計分板顏色”和“自定義計分板名稱”的操作，定義您的計分板顏色和名稱  
4. 定義一個生成計分板運行時 ID 的函數，參考 [`fzsd:module/scoreboard/display/register_id`](data/fzsd/functions/module/scoreboard/display/register_id.mcfunction) 函數  
5. 在 [`#fzsd:module/scoreboard/display/register_id`](data/fzsd/tags/functions/module/scoreboard/display/register_id.json) 標籤中註冊該函數  

## 自定義模組

### 排除假人

- 如果您不想對假人執行指令，請在指令前加上：  
  ```mcfunction
  execute if predicate fzsd:is_real_player
  ```

#### 註冊安裝、解除安裝、載入函數

- 在下列標籤中註冊你的安裝、解除安裝、載入函數：
 - [`#fzsd:system/install/module`](data/fzsd/tags/functions/system/install/module.json)
 - [`#fzsd:system/uninstall/module`](data/fzsd/tags/functions/system/uninstall/module.json)
 - [`#fzsd:system/load/module`](data/fzsd/tags/functions/system/load/module.json)

#### 註冊控制器按鈕

- 詳見 [控制器按鈕](#按鈕操作)