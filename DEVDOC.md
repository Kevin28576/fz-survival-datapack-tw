# 开发文档

## 指引

- `函数`，指数据包`<命名空间>/functions`目录下的`.mcfunction`文件
- `标签`，指数据包`<命名空间>/tags`目录下的`.json`文件
  - `覆盖标签并填入函数`时，`replace`为`true`

    ``` json
    {
        "replace": true,
        "values": ...
    }
    ```

  - `向标签中注册函数`时，`replace`为`false`

    ``` json
    {
        "replace": false,
        "values": ...
    }
    ```

- ***函数和标签是否能被扩展数据包成功覆盖，取决于数据包加载顺序***，请使用`/datapack enable <xxx> after <xxx>`指令，使您的扩展数据包在FZ's Survival Datapack之后加载

## 基本要求

- 函数由两个以上的函数调用，或由不同包下的函数调用，或需要作为接口开放给下游数据包时，应改用标签调用！
- 函数调用尽量不要使用`function`命令，应改在标签中按顺序调用！

## 系统模块

### 频繁使用的计算单元

- [`#fzsd:calculation/*`](data/fzsd/tags/functions/calculation/)标签通常被用来进行简单重复的计算任务

### 事件模块

- 通常由**进度**触发，触发后调用同名的事件标签
- 在[`#fzsd:game_event/(<...>/)on_<事件>`](data/fzsd/tags/functions/game_event/)标签中注册触发时需要调用的函数即可

### 日志模块

- 仓库中提供了日志相关的代码片段，位于[`.vscode/settings.json`](.vscode/settings.json)
- 暂时没有找到方法在服务端控制台打印日志，但会被记录在客户端

#### 詳細 Fine

- 等级：300
- 使用方法：`execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日志"}`

#### 偵錯 Debug

- 等级：400
- 使用方法：`execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日志"}`

#### 信息 Info

- 等级：500
- 使用方法：`execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日志"}`

#### 提醒 Alert

- 等级：600
- 使用方法：`execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @a [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日志"}`

#### 意外 Exception

- 暂不提供

#### 错误 Error

- 等级：800
- 使用方法：`execute if score fzsd.logger.level fzsd.variable.integer matches ..800 run tellraw @a [{"nbt": "fzsd.level.error", "interpret": true, "storage": "fzsd:logger"}, {"text": "你的日志"}`

## 功能模块

### 控制器模块

#### 按钮操作

1. 定义一个显示按钮时执行的函数，使用形如`tellraw @s {"text": "[按钮]", "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set <触发器分数>"}}`的指令定义按钮。
    - *触发器分数为正数会重新向玩家发送交互按钮，如不想重新发送，请使用负数*
    - 大多数情况下这里的觸發器分數必须是独一无二的
    - 建议使用`>10000`的随机数作为自定义按钮的觸發器分數
2. 在[`#fzsd:module/interactor/event/on_display`](data/fzsd/tags/functions/module/interactor/display.json)标签中注册上述函数
3. 定义一个点击按钮时执行的函数，使用形如`execute if score @s fzsd.module.interactor.trigger matches <min>..<max> run ...`的指令判断玩家的觸發器分數，并执行你的操作
4. 在[`#fzsd:module/interactor/event/on_click`](data/fzsd/tags/functions/module/interactor/event/on_click.json)标签中注册上述函数

#### 其他标签

- 标签[`#fzsd:module/interactor/reset_trigger`](data/fzsd/tags/functions/module/interactor/reset_trigger.json)：重置玩家`@s`的触发器计分板

### 计分板模块

#### 自定义计分板颜色

- 数据包提供了所有计分板的全部16色命名函数
- 使用方法：**覆盖**[`#fzsd:module/scoreboard/display/set_text/<计分板名称>`](data/fzsd/tags/functions/module/scoreboard/display/set_text/)标签，填入[`fzsd:module/scoreboard/display/set_text/<计分板名称>/<颜色名称>`](data/fzsd/functions/module/scoreboard/display/set_text/)函数

#### 自定义计分板名称

1. 定义一个设置计分板颜色、文本的函数，格式可以参考[`fzsd:module/scoreboard/display/set_text/general/*`](data/fzsd/functions/module/scoreboard/display/set_text/general/)函数
2. **覆盖**[`#fzsd:module/scoreboard/display/set_text/<计分板名称>`](data/fzsd/tags/functions/module/scoreboard/display/set_text/)标签，填入上述函数

#### 扩展自己的计分板

1. 定义一个安装函数，参考[`fzsd:module/scoreboard/install`](data/fzsd/functions/module/scoreboard/install.mcfunction)函数
2. 在[`#fzsd:module/scoreboard/install`](data/fzsd/tags/functions/module/scoreboard/install.json)标签中注册该函数
3. 按照“自定义计分板颜色”和“自定义计分板名称”中的操作，定义你的计分板颜色和名称
4. 定义一个生成计分板运行时id的函数，参考[`fzsd:module/scoreboard/display/register_id`](data/fzsd/functions/module/scoreboard/display/register_id.mcfunction)函数
5. 在[`#fzsd:module/scoreboard/display/register_id`](data/fzsd/tags/functions/module/scoreboard/display/register_id.json)标签中注册该函数
6. 定义一个用来在轮播时显示你的计分板的函数，参考[`fzsd:module/scoreboard/display/carousel/set_display/*`](data/fzsd/functions/module/scoreboard/display/carousel/set_display/activation.mcfunction)函数
7. 定义一个用来判断在轮播时是否轮到你的计分板的函数，在判断后调用上一条中的函数，参考[`fzsd:module/scoreboard/display/carousel/try_display/*`](data/fzsd/functions/module/scoreboard/display/carousel/try_display/activation.mcfunction)函数
8. 将该函数注册到[`#fzsd:module/scoreboard/display/try_display`](data/fzsd/tags/functions/module/scoreboard/display/carousel/try_display.json)标签中

## 自定义模块

### 排除假人

- 如果您不想对假人执行您的命令，请将以下语句添加在您要执行的命令之前：
    <pre><code><font color=ee82ee>execute </font><font color=1e90ff>if predicate </font><font color=f0e68c>fzsd:is_real_player</font></code></pre>

#### 注册安装、卸载、加载函数

- 在下列标签中注册你的安装、卸载、加载函数：
  - [`#fzsd:system/install/module`](data/fzsd/tags/functions/system/install/module.json)
  - [`#fzsd:system/uninstall/module`](data/fzsd/tags/functions/system/uninstall/module.json)
  - [`#fzsd:system/load/module`](data/fzsd/tags/functions/system/load/module.json)

#### 注册控制器按钮

- 见[控制器按钮](#按钮操作)
