---
tags:
- meta
- styles
---

SilverBullet UI (Top bar, Buttons, Notifications, etc.).

# Top Bar

```space-style
/* priority: 600 */
#sb-top {
  background: var(--surface-base);
  border: none;
  color: var(--text-primary);
}
```

## Title (Top Bar)

```space-style
/* priority: 600 */
.sb-saved {
  .sb-input {
    background: transparent;
    color: var(--text-primary) !important;
    font-size: 1em;
    font-weight: bold;
  }

  .sb-input::placeholder {
    color: var(--text-secondary);
  }
}
```

---

# Button

${widgets.button("Button", function() editor.flashNotification "Hello there 👋" end)}

```space-style
/* priority: 600 */
.sb-lua-wrapper .sb-lua-directive-inline {
  /* Remove the default directive container styling */
  &:has(button) {
    border: none !important;
    background: transparent !important;
    padding: 0 !important;
  }

  button {
    /* Colors & Surface */
    background: var(--surface-raised);
    color: var(--text-secondary);
    border: 1px solid var(--code-border-subtle);

    /* Shape & Typography */
    border-radius: var(--radius-md);
    padding: 2px 10px;
    font-size: 0.85em;
    font-family: var(--editor-font);
    font-weight: 500;

    /* Animation */
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    box-shadow: 0 1px 2px rgba(0,0,0,0.05);

    &:hover {
      background: var(--surface-hover);
      color: var(--accent-primary);
      border-color: var(--code-border-subtle);
      opacity: 1;
    }

    &:active {
      transform: translateY(1px);
      background: var(--surface-base);
    }
  }
}
```

---

# Notifications

${widgets.button("Show Message", function() editor.flashNotification "This is an message" end)}

```space-style
/* priority: 600 */
.sb-notifications {
  padding: 1rem 0;
}

.sb-notification-info {
  padding: .25rem !important;
  margin-bottom: .25rem !important;
  border-radius: var(--radius-md) !important;
  color: var(--accent-primary) !important;
  background: var(--surface-raised) !important;
  border: 1px solid var(--code-border-subtle) !important;
}

.sb-notification-error {
  padding: .25rem !important;
  margin-bottom: .25rem !important;
  border-radius: var(--radius-md) !important;
  color: var(--color-error) !important;
  background: var(--color-error-bg) !important;
  border: 1px solid var(--color-error) !important;
}
```

# Command Pallete

```space-style
/* priority: 1005 */

/* --- COMMAND PALETTE & MODALS --- */

/* 1. Modal Container */
dialog.sb-modal-box {
  background-color: var(--modal-background-color) !important;
  color: var(--modal-color) !important;
  border: 1px solid var(--border-default) !important;
  border-radius: var(--radius-lg) !important;
  box-shadow: 0 16px 32px rgba(0, 0, 0, 0.4) !important;
  padding: 0 !important;
}

/* 2. Cabeçalho flexível */
.sb-modal-box .sb-header {
  display: flex !important;
  align-items: center !important;
  gap: 12px !important;              /* Espaçamento perfeito e automático entre "Open" e o Input */
  background-color: transparent !important;
  padding: 10px 14px !important;
  border-bottom: 1px solid var(--border-default) !important;
}

.sb-modal-box .sb-header label {
  color: var(--text-primary) !important;
  font-weight: 600 !important;
  white-space: nowrap !important;
  margin: 0 !important;
}

/* 3. Input de Busca (Ajustado com Padding Interno Espaçoso) */
.sb-modal-box .sb-input,
.sb-modal-box .sb-filter-input {
  background-color: var(--surface-lower) !important;
  color: var(--text-primary) !important;
  border: 1px solid var(--border-default) !important;
  border-radius: var(--radius-md) !important;
  font-family: var(--code-font) !important;
  
  /* --- AJUSTE DE PADDING E MARGEM --- */
  padding: 8px 14px !important;      /* Padding interno: dá a altura naturalmente sem esmagar o texto */
  margin-left: 4px !important;       /* Margem extra sutil à esquerda */
  font-size: 0.95rem !important;     /* Tamanho agradável do texto digitado */
  line-height: 1.4 !important;
  width: 100% !important;
  box-sizing: border-box !important; /* Garante que o padding não estoure a largura */
  height: auto !important;          /* Deixa a altura crescer naturalmente com o padding */
}

.sb-modal-box .sb-input:focus {
  border-color: var(--accent-primary) !important;
  outline: none !important;
}

/* 4. Subtexto de Ajuda */
.sb-modal-box .sb-help-text {
  color: var(--text-tertiary) !important;
  background-color: var(--surface-lower) !important;
}

/* 5. Item Normal */
.sb-modal-box .sb-option {
  color: var(--text-secondary) !important;
  background-color: transparent !important;
  border-radius: var(--radius-xs) !important;
  transition: background-color 0.1s ease, color 0.1s ease;
}

/* 6. Item Selecionado e Hover */
.sb-modal-box .sb-option.sb-selected-option,
.sb-modal-box .sb-option:hover {
  background-color: #ffffff !important;
  color: #000000 !important;
  font-weight: 600 !important;
}

.sb-modal-box .sb-option.sb-selected-option *,
.sb-modal-box .sb-option:hover * {
  color: #000000 !important;
}

/* 7. Atalhos de Teclado (sem roxo) */
.sb-modal-box .sb-hint,
.sb-modal-box .sb-option .sb-hint,
.sb-modal-box span.sb-hint {
  background-color: var(--surface-hover) !important;
  color: var(--text-primary) !important;
  border: 1px solid var(--border-default) !important;
  border-radius: var(--radius-xs) !important;
  font-family: var(--code-font) !important;
  padding: 2px 6px !important;
}

/* 8. Badge de Atalho em Destaque */
.sb-modal-box .sb-option.sb-selected-option .sb-hint,
.sb-modal-box .sb-option:hover .sb-hint,
.sb-modal-box .sb-option.sb-selected-option span.sb-hint,
.sb-modal-box .sb-option:hover span.sb-hint {
  background-color: #101010 !important;
  color: #ffffff !important;
  border-color: #000000 !important;
}
```
