Main font stacks and layout variables.

```space-style
/* priority: 1000 */
:root, html, body {
  /* Fonts */
  /* NOTE: Using a proportional font can break list and other layout styling.*/
  /* For a proportional editor font, uncomment below. */
  /*--editor-font: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, sans-serif;*/
  --code-font: "IBM Plex Mono", "SF Mono", Menlo, Monaco, Consolas, monospace;
  
  --editor-width: 60rem !important;

  /* Border Radii */
  --radius-xs: 2px;
  --radius-sm: 4px;
  --radius-md: 6px;
  --radius-lg: 8px;
  --radius-xl: 10px;

  /* Root Mappings */
  --root-background-color: var(--surface-base);
  --root-color: var(--text-secondary);
  --ui-accent-color: var(--accent-primary);

  /* Interface Mappings */
  --top-color: var(--surface-raised);
  --top-saved-color: var(--surface-raised);
  --top-unsaved-color: var(--text-secondary);
  --top-background-color: var(--surface-lower);
  --top-sync-error-color: var(--color-error);
  --top-sync-error-background-color: var(--color-error-bg);
  --action-button-hover-color: var(--accent-primary);

  --notifications-background-color: var(--surface-raised);
  --notifications-border-color: var(--accent-primary);
  --notification-info-background-color: var(--surface-raised);
  --notification-error-background-color: var(--color-error-bg);

  --modal-color: var(--text-primary);
  --modal-background-color: var(--surface-raised);
  --modal-border-color: var(--accent-primary-10);
  --modal-help-background-color: var(--surface-lower);
  --modal-help-color: var(--text-secondary);
  
  /* Editor Mappings */
  --editor-widget-background-color: var(--surface-lower);
  
  --editor-blockquote-background-color: var(--surface-lower);
  --editor-blockquote-border-color: var(--accent-primary);
  
  --editor-highlight-background-color: var(--accent-secondary-25);
  
  --editor-hashtag-color: var(--accent-primary);
  --editor-hashtag-background-color: var(--accent-primary-10);
  --editor-hashtag-border-color: var(--accent-primary-50);
  
  --editor-code-background-color: var(--surface-lower);

  --editor-table-head-color: var(--text-primary);
  --editor-table-head-background-color: var(--surface-raised);
  --editor-table-even-background-color: var(--surface-lower);
  --editor-table-border-color: var(--surface-raised);
}
```
