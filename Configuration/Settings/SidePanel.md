```space-lua
command.define {
  name = "ToggleTreeView",
  run = function()
    editor.invokeCommand("Navigate: Toggle Document Explorer")
  end
}

actionButton.define {
  icon = "sidebar",
  description = "Explorer (Ctrl+Alt+E)",
  command = "ToggleTreeView"
}
```

```space-lua
config.set("explorer", {
  position = "lhs",
  homeDirName = "🏠 Home",
  goToCurrentDir = true,
  tileSize = "80px",
  enableContextMenu = true,
  listHeight = "24px",
  negativeFilter = {"Library/Std","*.js", "*test*"},
  treeFolderFirst = false,
  recoverAfterRefresh = true
})


```
