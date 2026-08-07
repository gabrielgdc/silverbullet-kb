---
tags:
- meta
- buttons
---

# =====================================================
# Side Pannel Button
# =====================================================

```space-lua
command.define {
  name = "ToggleTreeView",
  run = function()
    editor.invokeCommand("Navigate: Toggle Document Explorer")
  end
}

actionButton.define {
  id = "btn-explorer",
  icon = "sidebar",
  description = "Explorer (Ctrl+Alt+E)",
  command = "ToggleTreeView"
}
```
