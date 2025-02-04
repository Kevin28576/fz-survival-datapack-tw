# FZ 生存資料包 v3.1（繁中化版）

### ⚠ **重要提醒** ⚠

本版本為**繁中化版本**，並**非官方儲存庫**，因此可能與官方版本在功能與指令結構上存在差異。  
官方版本每次更新時，**通常會破壞原有的某些指令或功能結構**，因此**不適用於資料包版本的升級或降級**！

此外，**原作者在計分板系統中直接使用 `fzsd.module.scoreboard.display.*` 作為名稱顯示指定**。  
若你已在使用**官方原版**，請**勿直接替換**為本繁中化版本，否則可能導致計分板數據錯亂或遺失。

**如果你決定使用此繁中版，請先備份存檔，或直接在全新世界中安裝，以避免資料損壞，否則後果自負！**

---

為 FZ 伺服器設計的 Minecraft 生存輔助資料包  

[![資料包版本](https://img.shields.io/badge/正式板-3.1.14-blue.svg)](https://gitee.com/harvey-husky/FZ-sDatapack/releases) [![繁中化版本](https://img.shields.io/badge/繁中化版本-3.1.14-yellow.svg)](https://gitee.com/harvey-husky/FZ-sDatapack/releases) [![MC版本](https://img.shields.io/badge/Minecraft-1.20+-blue.svg)](https://minecraft.net/)  

> 官方其他版本請見 [發行頁面](https://gitee.com/harvey-husky/FZ-sDatapack/releases)  

## 安裝教學  

1. **相容性**  
   - `資料包 v3.1.x` 支援 `Minecraft 1.20-1.21`  
   - `資料包 v3.0.x` 支援 `Minecraft 1.18.2-1.19.x`（已停止維護）  

2. 前往 [官方發行頁面](https://gitee.com/harvey-husky/FZ-sDatapack/releases) 下載對應 Minecraft 版本的資料包  

3. 將下載的 `zip` 檔案放入 `world/datapacks` 資料夾（在單人存檔中位於 `.minecraft/saves/<存檔名稱>/datapacks`）  

4. （可選）下載並安裝 [Carpet Mod](https://github.com/gnembon/fabric-carpet/releases)  

5. （可選）從資料包 `zip` 檔案中的 `scripts` 資料夾解壓 `.sc` 檔案，放入 `world/scripts`（在單人存檔中位於 `.minecraft/saves/<存檔名稱>/scripts`）  
   - **注意：如果未正確安裝該腳本，資料包將強制禁用 Carpet Mod 的 `player` 指令，以防止假人污染計分板。安裝好腳本後需要手動啟用 `player` 指令。**  

6. 執行 `reload` 指令（或重新打開存檔；在部分第三方伺服器可能需要使用 `/minecraft:reload`）  

## 功能  

### **控制器**  

- 抬頭 90° 並蹲下，或執行 `/trigger fzsd.module.interactor.trigger` 指令來呼出控制器選單  

### **計分板**  

- 提供以下計分板：  

  | 預設名稱 |                     計分板 ID                     |
  | :------: | :----------------------------------------------: |
  |   總覽   |      fzsd.module.scoreboard.display.general      |
  |  活躍度  |    fzsd.module.scoreboard.display.activation     |
  | 飛行距離 | fzsd.module.scoreboard.display.aviating_distance |
  |  受傷榜  |   fzsd.module.scoreboard.display.damage_taken    |
  |  死亡榜  |    fzsd.module.scoreboard.display.death_count    |
  |  挖掘榜  |     fzsd.module.scoreboard.display.dig_count     |
  |  釣魚榜  |   fzsd.module.scoreboard.display.fishing_count   |
  |  擊殺榜  |    fzsd.module.scoreboard.display.kill_count     |
  |  放置榜  |  fzsd.module.scoreboard.display.placement_count  |
  |  交易榜  |    fzsd.module.scoreboard.display.trade_count    |  

- **相容 [破基岩榜 Mod](https://gitee.com/harvey-husky/yh-bbl)**  
  - 安裝該 Mod 後，使用連點器破基岩時，破基岩榜將自動顯示在控制器頁面  

  | 預設名稱 |                     計分板 ID                     |
  | :------: | :----------------------------------------------: |
  | 破基岩榜 | fzsd.module.scoreboard.display.bedrock_broken_count |

- **系統總覽計分板**：`fzsd.module.scoreboard.assign.general`  
  - 可透過此計分板修改總分數，下次加分時會刷新顯示  

  |   預設名稱   |                    計分板 ID                    |
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

### **地毯腳本**  

- **如果你不了解 Carpet Mod 或 Carpet 腳本，請忽略本節**  
- 需要安裝 [Carpet Mod](https://github.com/gnembon/fabric-carpet/releases)  
- 從資料包 `zip` 檔案的 `scripts` 資料夾解壓 `.sc` 檔案，放入 `world/scripts`  
- **注意：未正確安裝腳本時，資料包會強制禁用 `player` 指令，避免假人污染計分板。安裝腳本後需手動啟用 `player` 指令。**  

- 腳本：
  - `fzsd_score.sc`：
    - 防止 Carpet 假人污染計分板  
    - 可標記哪些玩家是假人  
    - 子指令（ `/fzsd_score <子指令>` ）：
      - **⚠ 使用前請務必備份存檔！若發現異常，請回報問題**  
      - `recalculate`：重新計算所有計分板總分  
      - `recalculate <scoreboardID>`：重新計算指定計分板總分  
      - `set <player> <scoreboardID> <score>`：設定玩家的計分板分數  
      - `reset <player>`：重置玩家所有計分板分數  
      - `reset <player> <scoreboardID>`：重置玩家的指定計分板分數  
      - `restore player <玩家名> <計分板ID>`：恢復玩家的指定計分板分數  
      - `restore player <玩家名>`：恢復玩家的所有計分板分數  
      - `restore whitelist <計分板ID>`：恢復所有白名單玩家的指定計分板分數  
      - `restore whitelist`：恢復所有白名單玩家的所有計分板分數  
        - **副作用：恢復後玩家將被傳送至重生點，請確保重生點安全**  
      - `commandPlayer <permissionType>`：設定 `player` 指令權限類型  

### **夜魅預警**  

- **首次使用前需要先睡覺一次**  

### **管理員功能**  

- 執行 `/function admin.fzsd:admin` 指令來管理（安裝、卸載等）各模組  

### **其他功能**  

- 掃地機  
- 查詢當前維度與座標（以及對應的主世界、地獄座標）（私訊/廣播）  
- 查詢上次死亡的維度與座標（私訊）  
- 查詢上次進出的地獄傳送門座標（私訊/廣播）  
- 查詢上次重生點的維度與座標（私訊）  

## **開發者相關**  

- 詳見 [開發文件](/DEVDOC.md)
