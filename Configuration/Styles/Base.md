Global CSS resets and typography smoothing.

```space-style
/* priority: 800 */
body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-rendering: optimizeLegibility;
  font-variant-ligatures: discretionary-ligatures;

  background-color: var(--surface-lower) !important;
}

/* Selection */
.cm-selectionLayer {
  z-index: 10 !important;
  pointer-events: none !important;
}

.cm-selectionLayer .cm-selectionBackground {
  background: var(--accent-primary-50) !important;
  opacity: 0.2 !important;
}

.cm-content ::selection {
  background: transparent !important;
}
```
