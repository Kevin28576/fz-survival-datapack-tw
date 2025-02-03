## 將模組安裝記錄緩存，因為模組的解除安裝函數會覆寫該記錄
data modify storage fzsd:install fzsd.cache set from storage fzsd:install fzsd.module