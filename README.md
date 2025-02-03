# FZ 生存資料包 v3.1

为FZ服务器写的Minecraft生存辅助数据包


[![数据包版本](https://img.shields.io/badge/正式版-3.1.12-blue.svg)](https://gitee.com/harvey-husky/FZ-sDatapack/releases) [![MC版本](https://img.shields.io/badge/Minecraft-1.20+-blue.svg)](https://minecraft.net/)


> 其他版本见[发行页面](https://gitee.com/harvey-husky/FZ-sDatapack/releases)

## 安装教程

1. 兼容性
     - `数据包 v3.1.x` 支持 `Minecraft 1.20-1.21`
     - `数据包 v3.0.x` 支持 `Minecraft 1.18.2-1.19.x` (不再维护)
2. 前往[发行页面](https://gitee.com/harvey-husky/FZ-sDatapack/releases)下载对应MC版本的数据包
3. 将数据包 `zip` 文件放入 `world/datapacks` 中（在客户端位于 `.minecraft/saves/<存档名>/datapacks`）
4. （可选）下载并安装 [Carpet Mod](https://github.com/gnembon/fabric-carpet/releases)  
5. （可选）从数据包 `zip` 文件的 `scripts` 目录中解压 `.sc` 文件，将其放入 `world/scripts` 中（在客户端位于 `.minecraft/saves/<存档名>/scripts` ）
    - **注意：如果未正确安装该脚本，数据包会强制禁用 carpet mod 的 `player` 命令以避免假人污染记分板，需要在安装好脚本后手动启用 `player` 命令**
6. 执行 `reload` 指令（或重新打开存档；在一些第三方服务端中可能需要改为`/minecraft:reload`）

## 功能

### 控制器

- 抬头90°并蹲起，或执行 `/trigger fzsd.module.interactor.trigger` 指令唤出控制器

### 计分板

- 提供下列計分板：

  | 默认名称 |                     计分板 ID                     |
  | :------: | :----------------------------------------------: |
  |   总览   |      fzsd.module.scoreboard.display.general      |
  |  活跃度  |    fzsd.module.scoreboard.display.activation     |
  | 飞行距离 | fzsd.module.scoreboard.display.aviating_distance |
  |  抖M榜   |   fzsd.module.scoreboard.display.damage_taken    |
  |  死亡榜  |    fzsd.module.scoreboard.display.death_count    |
  |  挖掘榜  |     fzsd.module.scoreboard.display.dig_count     |
  |  钓鱼榜  |   fzsd.module.scoreboard.display.fishing_count   |
  |  击杀榜  |    fzsd.module.scoreboard.display.kill_count     |
  |  放置榜  |  fzsd.module.scoreboard.display.placement_count  |
  |  交易榜  |    fzsd.module.scoreboard.display.trade_count    |

- 兼容[破基岩榜Mod](https://gitee.com/harvey-husky/yh-bbl)
  - 安装该Mod后，使用连点器破基岩，破基岩榜将自动显示在控制器页面

  | 默认名称 |                     计分板 ID                     |
  | :------: | :----------------------------------------------: |
  | 破基岩榜 |fzsd.module.scoreboard.display.bedrock_broken_count|

- 系统总览計分板：`fzsd.module.scoreboard.assign.general`
  - 可以在在此记分板修改总分数据，下次加分时会刷新显示分数
  - 总计分项名称对照表：

  |   默认名称   |                    player ID                    |
  |  :------:  | :----------------------------------------------: |
  |  總活躍時間  |    fzsd.module.scoreboard.total.activation     |
  |  總飛行距離  | fzsd.module.scoreboard.total.aviating_distance |
  |  總受傷害數  |   fzsd.module.scoreboard.total.damage_taken    |
  |   總死亡數   |    fzsd.module.scoreboard.total.death_count    |
  |   總挖掘量   |     fzsd.module.scoreboard.total.dig_count     |
  |   總釣魚數   |   fzsd.module.scoreboard.total.fishing_count   |
  |   總擊殺數   |    fzsd.module.scoreboard.total.kill_count     |
  |   總建造數   |  fzsd.module.scoreboard.total.placement_count  |
  |   總交易數   |    fzsd.module.scoreboard.total.trade_count    |

### 地毯脚本

- 如果你不知道 Carpet Mod 或 Carpet 脚本，请忽略本节
- 需要安装 [Carpet Mod](https://github.com/gnembon/fabric-carpet/releases)
- 从数据包 `zip` 文件的 `scripts` 目录中解压 `.sc` 文件，将其放入 `world/scripts` 中（在客户端位于 `.minecraft/saves/<存档名>/scripts` ）
- **注意：如果未正确安装该脚本，数据包会强制禁用 carpet mod 的 `player` 命令以避免假人污染记分板，需要在安装好脚本后手动启用 `player` 命令**
- 脚本：
  - `fzsd_score.sc`：
    - 可避免Carpet假人污染计分板
    - 可以标记哪些玩家是假人
    - 子命令（ `/fzsd_score <子命令>` ）：
      - ***使用前请务必备份存档！请报告不符预期的结果***
      - ***使用前请务必备份存档！请报告不符预期的结果***
      - ***使用前请务必备份存档！请报告不符预期的结果***
      - `recalculate`：重新计算所有计分板总分
      - `recalculate <scoreboardID>`：重新计算该计分板总分
      - `set <player> <scoreboardID> <score>`：设置该玩家该计分板的分数
      - `reset <player>`：重置该玩家的所有分数
      - `reset <player> <scoreboardID>`：重置该玩家该计分板的分数
      - `restore player <玩家名> <计分板ID>`：恢复该玩家的该计分板分数
      - `restore player <玩家名>`：恢复该玩家的所有计分板分数
      - `restore whitelist <计分板ID>`：恢复所有白名单玩家的该计分板分数
      - `restore whitelist`：恢复所有白名单玩家的所有计分板分数
        - *副作用：恢复完成后玩家会被放置在出生点，请确保出生点完全安全*
      - `commandPlayer <permissionType>`：设置player命令权限类型

### 夜魅预警

- 首次使用需要先睡一觉

### 管理员

- 使用`/function admin.fzsd:admin`命令管理（安装、卸载等）各模块

### 其他

- 扫地机
- 获取当前维度和坐标（以及对应的主世界、地獄坐标）（私訊給自己/廣播）
- 获取上次死亡维度和坐标（私訊給自己）
- 获取上次穿出的地獄传送门坐标（私訊給自己/廣播）
- 获取上个重生点维度和坐标（私訊給自己）

## 开发者相关

- 见[开发文档](/DEVDOC.md)
