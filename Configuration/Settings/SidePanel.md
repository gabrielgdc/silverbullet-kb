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

```space-lua
local iconPath = urlPrefix .. '.fs/Configuration/Styles/Icons/SidePanel.svg'

local ICONS = {
  grid           = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-grid"></use></svg>',
  list           = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-list"></use></svg>',
  tree           = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-tree"></use></svg>',
  folder         = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-folder"></use></svg>',
  folderUp       = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-folderUp"></use></svg>',
  folderCollapse = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-folderCollapse"></use></svg>',
  folderExpand   = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-folderExpand"></use></svg>',
  refresh        = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-refresh"></use></svg>',
  fileMD         = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-fileMD"></use></svg>',
  filePDF        = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-filePDF"></use></svg>',
  fileEX         = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-fileEX"></use></svg>',
  fileDIO        = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-fileDIO"></use></svg>',
  file           = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-file"></use></svg>',
  fileIMG        = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-fileIMG"></use></svg>',
  home           = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-home"></use></svg>',
  close          = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-close"></use></svg>',
  filterOff      = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-filterOff"></use></svg>',
  filterOn       = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-filterOn"></use></svg>',
  window         = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-window"></use></svg>',
  newPage        = '<svg class="icon-svg"><use href="' .. iconPath .. '#icon-newPage"></use></svg>',
}
```
