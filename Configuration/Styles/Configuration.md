---
tags:
- meta
- styles
---

Main font stacks and layout variables.

```space-style
/* priority: 1000 */
:root, html, body {
  /* Fonts */
  /* NOTE: Using a proportional font can break list and other layout styling.*/
  /* For a proportional editor font, uncomment below. */
  /*--editor-font: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, sans-serif;*/
  --code-font: "IBM Plex Mono", "SF Mono", Menlo, Monaco, Consolas, monospace !important;
  
  --editor-width: 60rem !important;

  /* Border Radii */
  --radius-xs: 2px !important;
  --radius-sm: 4px !important;
  --radius-md: 6px !important;
  --radius-lg: 8px !important;
  --radius-xl: 10px !important;

  /* Root Mappings */
  --root-background-color: var(--surface-base) !important;
  --root-color: var(--text-secondary) !important;
  --ui-accent-color: var(--accent-secondary) !important;
  --ui-accent-contrast-color: var(--surface-base) !important;

  /* Interface Mappings */
  --top-color: var(--surface-raised) !important;
  --top-saved-color: var(--surface-raised) !important;
  --top-unsaved-color: var(--text-secondary) !important;
  --top-background-color: var(--surface-lower) !important;
  --top-sync-error-color: var(--color-error) !important;
  --top-sync-error-background-color: var(--color-error-bg) !important;
  --action-button-hover-color: var(--accent-primary) !important;

  --notifications-background-color: var(--surface-raised) !important;
  --notifications-border-color: var(--accent-primary) !important;
  --notification-info-background-color: var(--surface-raised) !important;
  --notification-error-background-color: var(--color-error-bg) !important;

  --modal-color: var(--text-primary) !important;
  --modal-background-color: var(--surface-raised) !important;
  --modal-border-color: var(--accent-primary-10) !important;
  --modal-help-background-color: var(--surface-lower) !important;
  --modal-help-color: var(--text-secondary) !important;
  
  /* Editor Mappings */
  --editor-widget-background-color: var(--surface-lower) !important;
  
  --editor-blockquote-background-color: var(--surface-lower) !important;
  --editor-blockquote-border-color: var(--accent-primary) !important;
  
  --editor-highlight-background-color: var(--accent-secondary-25) !important;
  
  --editor-hashtag-color: var(--accent-primary) !important;
  --editor-hashtag-background-color: var(--accent-primary-10) !important;
  --editor-hashtag-border-color: var(--accent-primary-50) !important;
  
  --editor-code-background-color: var(--surface-lower) !important;

  --editor-table-head-color: var(--text-primary) !important;
  --editor-table-head-background-color: var(--surface-raised) !important;
  --editor-table-even-background-color: var(--surface-lower) !important;
  --editor-table-border-color: var(--surface-raised) !important;
}
```
