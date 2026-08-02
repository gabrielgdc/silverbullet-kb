Markdown elements (Links, Tags, Code, Lists).

# Tags
Example: #linux #homelab

```space-style
/* priority: 700 */
/* Tags */
.sb-hashtag {
  color: var(--accent-primary) !important;
  background: var(--accent-primary-10) !important;
  border: 1px solid var(--accent-primary-50);
  border-radius: var(--radius-sm);
  font-family: var(--code-font) !important;
  font-size: 0.85em;
  padding: 0px 4px;
}
```

---

# Code
Use `inline code` for small code snippets.

```space-style
/* priority: 700 */
/* Inline Code */
span.sb-code {
  border: 1px solid var(--code-border-subtle);
  color: var(--text-primary);
  border-radius: var(--radius-sm);
  font-family: var(--code-font) !important;
  font-size: 0.85em;
  padding: 0px 4px;
}

/* Fenced Code Blocks */
/* TODO: Text highlighting is broken */
.sb-line-fenced-code {
  font-family: var(--code-font) !important;
  font-size: 0.9em !important;
  background: var(--editor-code-background-color) !important;
}

div.sb-line-fenced-code {
  padding: 0 0.8em !important;
}


/* Rounded borders */
/* First line with button */
.sb-line-fenced-code:has(.sb-actions) {
  border-top-left-radius: var(--radius-md);
  border-top-right-radius: var(--radius-md);
}

/* Last line with ``` */
.sb-line-fenced-code:has(.sb-meta):not(:has(.sb-actions)) {
  border-bottom-left-radius: var(--radius-md);
  border-bottom-right-radius: var(--radius-md);
}
```

---

# Markdown Line
```space-style
/* priority: 700 */
.sb-line-hr {
  border-color: var(--code-border-subtle);
}
```

---

# Block-quote
```space-style
/* priority: 700 */
#sb-main .cm-editor .sb-blockquote-outside {
  text-indent: 0.5ch;
}
```

---

# Highlight
```space-style
/* priority: 700 */
.sb-highlight {
  padding: 0px 2px;
  border-radius: var(--radius-xs);
}
```

---

# Table
```space-style
/* priority: 700 */
.sb-table-widget {
  border-radius: var(--radius-md);
  border-width: 1px;
  border-style: solid;
  border-color: var(--surface-raised);
}
```

# Headings
```space-style
/* priority: 700 */
.sb-h3 {
  font-size: 0.9em;
}
```