Light and Dark mode color definitions.

```space-style
/* priority: 1000 */

html[data-theme="dark"] {
  --accent-primary: #d4d4d4;
  --accent-secondary: #9a9a9a;

  --surface-base: #101010;
  --surface-lower: #141414;
  --surface-raised: #1a1a1a;
  --surface-hover: #242424;
  --border-default: #303030;

  --text-primary: #f5f5f5;
  --text-secondary: #c4c4c4;
  --text-tertiary: #8d8d8d;

  --color-error: #d4d4d4;
  --color-error-bg: #1a1a1a;

  --code-border-subtle: #303030;
}

html[data-theme="light"] {
  --accent-primary: #3f3f3f;
  --accent-secondary: #6a6a6a;

  --surface-base: #f8f8f8;
  --surface-lower: #efefef;
  --surface-raised: #e5e5e5;
  --surface-hover: #d8d8d8;
  --border-default: #c9c9c9;

  --text-primary: #171717;
  --text-secondary: #555555;
  --text-tertiary: #888888;

  --color-error: #555555;
  --color-error-bg: #eeeeee;

  --code-border-subtle: #c9c9c9;
}

/* Computed Accent Opacities */
:root {
  --accent-primary-10: color-mix(in srgb, var(--accent-primary), transparent 90%);
  --accent-primary-50: color-mix(in srgb, var(--accent-primary), transparent 50%);
  --accent-secondary-10: color-mix(in srgb, var(--accent-secondary), transparent 90%);
  --accent-secondary-25: color-mix(in srgb, var(--accent-secondary), transparent 75%);
  --accent-secondary-50: color-mix(in srgb, var(--accent-secondary), transparent 50%);
  --selection-bg: color-mix(in srgb, var(--accent-primary), transparent 70%);
}
```
