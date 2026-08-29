# Ementa — Design Tokens

> Arquivo gerado a partir de `public/clone-styles.css`, `public/clone-fonts.css` e `index.html` do `ementa-landing-page`. Use como referência para replicar o visual no app `ementa`.

## 1. Resumo do visual

- **Modo**: escuro (`html class="dark"`)
- **Superfícies em camadas**: `surface-1`, `surface-2`, `surface-3`
- **Cor de destaque**: laranja/cobre (`primary` / `ember`)
- **Display font**: `CameraPlainVariable` declarada, mas `.font-display` atualmente cai em `Manrope`
- **Sans-serif**: `Inter`
- **Monospace**: `JetBrains Mono`
- **Borda sutil**: `1px solid var(--border)`
- **Animações**: reveal-in, pulse, enter, exit

## 2. Fontes

### 2.1 Famílias carregadas

- `Inter`
- `JetBrains Mono`
- `Manrope`

### 2.2 Display font (`CameraPlainVariable`)

```css
@font-face {
		font-family: 'CameraPlainVariable';
		src: url('https://cdn.gpteng.co/mcp-widgets/v1/fonts/CameraPlainVariable.woff2') format('woff2');
		font-weight: 100 900;
		font-style: normal;
		font-display: swap;
	}
```

### 2.3 Classes utilitárias

**.font-display**

```css
.font-display { font-family:Manrope,ui-sans-serif,system-ui,sans-serif }
```

**.font-mono**

```css
.font-mono { font-family:JetBrains Mono,ui-monospace,SFMono-Regular,monospace }
```

**Nota**: `.font-display` usa `Manrope`. Para usar `CameraPlainVariable` como display, substituir por:

```css
.font-display { font-family: 'CameraPlainVariable', 'CameraPlainVariable Fallback', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; }
```

## 3. Cores semânticas (`:root`)

Bloco completo:

```css
:root{--radius:.25rem;--background:oklch(16% .003 60);--foreground:oklch(96% .004 80);--surface-1:oklch(21% .004 60);--surface-2:oklch(25% .005 60);--surface-3:oklch(30% .006 60);--card:oklch(21% .004 60);--card-foreground:oklch(96% .004 80);--popover:oklch(21% .004 60);--popover-foreground:oklch(96% .004 80);--primary:oklch(78% .121 61.5);--primary-foreground:oklch(16% .003 60);--ember:oklch(78% .121 61.5);--ember-soft:oklch(86% .075 66);--secondary:oklch(25% .005 60);--secondary-foreground:oklch(96% .004 80);--muted:oklch(25% .005 60);--muted-foreground:oklch(72% .008 70);--accent:oklch(30% .006 60);--accent-foreground:oklch(96% .004 80);--destructive:oklch(62% .2 25);--destructive-foreground:oklch(98% 0 0);--border:oklch(32% .005 60);--border-strong:oklch(42% .008 60);--input:oklch(32% .005 60);--ring:oklch(78% .121 61.5);--gradient-ember:linear-gradient(135deg, var(--ember), var(--ember-soft));--glow-ember:0 0 0 1px var(--ember), 0 12px 40px -16px var(--ember)}
```

### Resumo

- `background`: `#131313` aproximadamente (`oklch(16% .003 60)`)
- `foreground`: `#f5f5f5` aproximadamente (`oklch(96% .004 80)`)
- `surface-1`: `#1c1c1c` (`oklch(21% .004 60)`)
- `surface-2`: `#242424` (`oklch(25% .005 60)`)
- `surface-3`: `#2a2a2a` (`oklch(30% .006 60)`)
- `primary` / `ember`: laranja/cobre (`oklch(78% .121 61.5)`)
- `primary-foreground`: `#131313` (`oklch(16% .003 60)`)
- `muted-foreground`: cinza claro (`oklch(72% .008 70)`)
- `border`: `#282828` (`oklch(32% .005 60)`)
- `border-strong`: `#383838` (`oklch(42% .008 60)`)

## 4. Escala do tema (Tailwind v4)

Bloco completo `@layer theme`:

```css
@layer theme{:root,:host{--font-sans:"Inter", ui-sans-serif, system-ui, sans-serif;--font-mono:"JetBrains Mono", ui-monospace, SFMono-Regular, monospace;--color-black:#000;--spacing:.25rem;--container-sm:24rem;--container-md:28rem;--container-lg:32rem;--container-2xl:42rem;--container-3xl:48rem;--container-5xl:64rem;--text-xs:.75rem;--text-xs--line-height:calc(1 / .75);--text-sm:.875rem;--text-sm--line-height:calc(1.25 / .875);--text-base:1rem;--text-base--line-height:calc(1.5 / 1);--text-lg:1.125rem;--text-lg--line-height:calc(1.75 / 1.125);--text-xl:1.25rem;--text-xl--line-height:calc(1.75 / 1.25);--text-2xl:1.5rem;--text-2xl--line-height:calc(2 / 1.5);--text-3xl:1.875rem;--text-3xl--line-height:calc(2.25 / 1.875);--text-4xl:2.25rem;--text-4xl--line-height:calc(2.5 / 2.25);--text-5xl:3rem;--text-5xl--line-height:1;--text-6xl:3.75rem;--text-6xl--line-height:1;--text-7xl:4.5rem;--text-7xl--line-height:1;--font-weight-normal:400;--font-weight-medium:500;--font-weight-semibold:600;--font-weight-bold:700;--font-weight-extrabold:800;--tracking-tight:-.025em;--tracking-wider:.05em;--tracking-widest:.1em;--leading-relaxed:1.625;--ease-in-out:cubic-bezier(.4, 0, .2, 1);--animate-pulse:pulse 2s cubic-bezier(.4, 0, .6, 1) infinite;--blur-sm:8px;--blur-md:12px;--aspect-video:16 / 9;--default-transition-duration:.15s;--default-transition-timing-function:cubic-bezier(.4, 0, .2, 1);--default-font-family:"Inter", ui-sans-serif, system-ui, sans-serif;--default-mono-font-family:"JetBrains Mono", ui-monospace, SFMono-Regular, monospace;--font-display:"Manrope", ui-sans-serif, system-ui, sans-serif;--color-background:var(--background);--color-foreground:var(--foreground);--color-border:var(--border)}}
```

### 4.1 Tipografia

| Token | Valor | Uso |
|-------|-------|-----|
| `--font-sans` | `"Inter", ui-sans-serif, system-ui, sans-serif` | Corpo |
| `--font-mono` | `"JetBrains Mono", ui-monospace, SFMono-Regular, monospace` | Código, labels |
| `--font-display` | `"Manrope", ui-sans-serif, system-ui, sans-serif` | Títulos (ver nota acima) |
| `--font-weight-normal` | `400` | |
| `--font-weight-medium` | `500` | |
| `--font-weight-semibold` | `600` | |
| `--font-weight-bold` | `700` | |
| `--font-weight-extrabold` | `800` | |
| `--text-xs` | `.75rem` | Menor texto |
| `--text-sm` | `.875rem` | Textos secundários |
| `--text-base` | `1rem` | Corpo |
| `--text-lg` | `1.125rem` | |
| `--text-xl` | `1.25rem` | |
| `--text-2xl` | `1.5rem` | |
| `--text-3xl` | `1.875rem` | Títulos seção |
| `--text-4xl` | `2.25rem` | Títulos grandes |
| `--text-5xl` | `3rem` | |
| `--text-6xl` | `3.75rem` | |
| `--text-7xl` | `4.5rem` | |
| `--tracking-tight` | `-.025em` | |
| `--tracking-wider` | `.05em` | Labels mono |
| `--tracking-widest` | `.1em` | |
| `--leading-relaxed` | `1.625` | |

### 4.2 Espaçamento

Base `--spacing`: `.25rem` (4px).

Portanto os espaçamentos Tailwind seguem a escala padrão: `p-1` = 0.25rem, `p-2` = 0.5rem, `p-4` = 1rem, `p-6` = 1.5rem, `p-8` = 2rem, `p-16` = 4rem, etc.

### 4.3 Larguras de container

| Token | Valor |
|-------|-------|
| `--container-sm` | `24rem` |
| `--container-md` | `28rem` |
| `--container-lg` | `32rem` |
| `--container-2xl` | `42rem` |
| `--container-3xl` | `48rem` |
| `--container-5xl` | `64rem` |

A landing usa `max-w-[1200px]` manualmente em várias seções.

### 4.4 Breakpoints padrão do Tailwind

| Prefixo | Largura |
|---------|---------|
| `sm` | `640px` |
| `md` | `768px` |
| `lg` | `1024px` |
| `xl` | `1280px` |
| `2xl` | `1536px` |

### 4.5 Easing e duração

| Token | Valor |
|-------|-------|
| `--ease-in-out` | `cubic-bezier(.4, 0, .2, 1)` |
| `--default-transition-duration` | `.15s` |
| `--default-transition-timing-function` | `cubic-bezier(.4, 0, .2, 1)` |
| `--animate-pulse` | `pulse 2s cubic-bezier(.4, 0, .6, 1) infinite` |

## 5. Bordas

### 5.1 Border radius

Token `--radius`: `.25rem` (4px).

Classes utilitárias:

- `.rounded-full`: `border-radius:2147483647px`
- `.rounded-lg`: `border-radius:calc(var(--radius) + 4px)`
- `.rounded-md`: `border-radius:var(--radius)`
- `.rounded-sm`: `border-radius:calc(var(--radius) - 2px)`
- `.rounded-xl`: `border-radius:calc(var(--radius) + 8px)`

### 5.2 Cores de borda

- `border` → `var(--border)` (cinza escuro)
- `border-strong` → `var(--border-strong)` (um pouco mais claro)
- Utilitário `border-border` aplica `border-color: var(--border)`

## 6. Sombras

### 6.1 Tokens especiais

- `--gradient-ember`: `linear-gradient(135deg, var(--ember), var(--ember-soft))`
- `--glow-ember`: `0 0 0 1px var(--ember), 0 12px 40px -16px var(--ember)`

### 6.2 Utilitários de shadow

- `.shadow`: `--tw-shadow:0 1px 3px 0 var(--tw-shadow-color,#0000001a), 0 1px 2px -1px var(--tw-shadow-color,#0000001a);box-shadow:var(--tw-inset-shadow), var(--tw-inset-ring-shadow), var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)`
- `.shadow-lg`: `--tw-shadow:0 10px 15px -3px var(--tw-shadow-color,#0000001a), 0 4px 6px -4px var(--tw-shadow-color,#0000001a);box-shadow:var(--tw-inset-shadow), var(--tw-inset-ring-shadow), var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)`
- `.shadow-md`: `--tw-shadow:0 4px 6px -1px var(--tw-shadow-color,#0000001a), 0 2px 4px -2px var(--tw-shadow-color,#0000001a);box-shadow:var(--tw-inset-shadow), var(--tw-inset-ring-shadow), var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)`
- `.shadow-sm`: `--tw-shadow:0 1px 3px 0 var(--tw-shadow-color,#0000001a), 0 1px 2px -1px var(--tw-shadow-color,#0000001a);box-shadow:var(--tw-inset-shadow), var(--tw-inset-ring-shadow), var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)`
- `.shadow-xl`: `--tw-shadow:0 20px 25px -5px var(--tw-shadow-color,#0000001a), 0 8px 10px -6px var(--tw-shadow-color,#0000001a);box-shadow:var(--tw-inset-shadow), var(--tw-inset-ring-shadow), var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)`
## 7. Classes customizadas importantes

### .surface-card

```css
.surface-card {
background-color:var(--surface-1);border:1px solid var(--border);border-radius:calc(var(--radius) + 4px);transition:background-color .2s,border-color .2s,transform .2s
}
```

### .label-mono

```css
.label-mono {
font-family:var(--font-mono);letter-spacing:.09em;text-transform:uppercase;color:var(--muted-foreground);font-size:.72rem;font-weight:500
}
```

### .reveal

```css
.reveal {
opacity:0;animation:.7s cubic-bezier(.22,1,.36,1) forwards reveal-in;transform:translateY(16px)
}
```

### .grid-backdrop

```css
.grid-backdrop {
background-image:linear-gradient(to right, var(--border) 1px, transparent 1px), linear-gradient(to bottom, var(--border) 1px, transparent 1px)
}
```

## 8. Animações

### 8.1 @keyframes

#### `reveal-in`

```css
@keyframes reveal-in{to{opacity:1;transform:none}}
```

#### `pulse`

```css
@keyframes pulse{50%{opacity:.5}}
```

#### `enter`

```css
@keyframes enter{0%{opacity:var(--tw-enter-opacity,1);transform:translate3d(var(--tw-enter-translate-x,0),var(--tw-enter-translate-y,0),0)scale3d(var(--tw-enter-scale,1),var(--tw-enter-scale,1),var(--tw-enter-scale,1))rotate(var(--tw-enter-rotate,0));filter:blur(var(--tw-enter-blur,0))}}
```

#### `exit`

```css
@keyframes exit{to{opacity:var(--tw-exit-opacity,1);transform:translate3d(var(--tw-exit-translate-x,0),var(--tw-exit-translate-y,0),0)scale3d(var(--tw-exit-scale,1),var(--tw-exit-scale,1),var(--tw-exit-scale,1))rotate(var(--tw-exit-rotate,0));filter:blur(var(--tw-exit-blur,0))}}
```

#### `accordion-down`

```css
@keyframes accordion-down{0%{height:0}to{height:var(--radix-accordion-content-height,var(--bits-accordion-content-height,var(--reka-accordion-content-height,var(--kb-accordion-content-height,var(--ngp-accordion-content-height,auto)))))}}
```

#### `accordion-up`

```css
@keyframes accordion-up{0%{height:var(--radix-accordion-content-height,var(--bits-accordion-content-height,var(--reka-accordion-content-height,var(--kb-accordion-content-height,var(--ngp-accordion-content-height,auto)))))}to{height:0}}
```

#### `caret-blink`

```css
@keyframes caret-blink{0%,70%,to{opacity:1}20%,50%{opacity:0}}
```

### 8.2 Uso prático

- Aplique `reveal` em elementos que devem surgir ao rolar a página.
- A classe `.reveal` define `opacity: 0; animation: .7s cubic-bezier(.22,1,.36,1) forwards reveal-in; transform: translateY(16px)`.
- A animação `reveal-in` vai de `opacity: 0; transform: translateY(16px)` para `opacity: 1; transform: none`.

## 9. Padrões de componentes usados no clone

Para aplicar no app, use as variáveis e combinações de classe abaixo.

### 9.1 Header principal

```html
<header class="sticky top-0 z-50 border-b border-transparent bg-background/40 backdrop-blur-sm">
```

### 9.2 Navegação secundária

```html
<a class="rounded-sm px-3 py-2 text-sm text-muted-foreground transition-colors hover:text-foreground">Link</a>
```

### 9.3 Botão primário (CTA)

```html
<button class="inline-flex items-center justify-center gap-2 whitespace-nowrap cursor-pointer transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring bg-primary text-primary-foreground shadow hover:bg-primary/90 h-8 rounded-md px-3 text-xs font-semibold">
  Texto
</button>
```

### 9.4 Card de recurso

```html
<article class="surface-card flex gap-4 p-5">
  <span class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary">...</span>
  <div class="min-w-0">
    <h3 class="font-display text-base font-semibold">Título</h3>
    <p class="mt-1 text-sm leading-relaxed text-muted-foreground">Descrição</p>
  </div>
</article>
```

### 9.5 Input / busca

```html
<div class="overflow-hidden rounded-lg border border-border bg-surface-1 px-4 py-3">
  <input class="bg-transparent text-foreground placeholder:text-muted-foreground" placeholder="..." />
</div>
```

### 9.6 Label mono

```html
<p class="label-mono mb-4">Etiqueta de seção</p>
```

### 9.7 Título de seção

```html
<h2 class="font-display text-3xl font-bold sm:text-4xl">Título</h2>
<p class="mt-4 text-muted-foreground">Subtítulo</p>
```

## 10. Checklist para migrar o app

1. **Fontes**: copiar `clone-fonts.css` (ou o link Google Fonts) e o `@font-face` de `CameraPlainVariable`.
2. **Cores**: colar o bloco `:root` em um `global.css` e garantir `dark` no `html`.
3. **Tipografia**: mapear `font-display`, `font-sans`, `font-mono`.
4. **Componentes**: refazer `Button`, `Card`, `Input` com as classes acima.
5. **Surfaces**: usar `surface-1`, `surface-2`, `surface-3` em vez de cinzas puros.
6. **Bordas**: usar `border`/`border-strong` para hierarquia.
7. **Animações**: adicionar `reveal-in` e `reveal`.
8. **Gradiente/glow**: usar `--gradient-ember` e `--glow-ember` em CTAs.


---

# Tokens do app Ementa (print da interface real)

> Extraído de `ementa/packages/ui/src/styles/tokens.css` e dos componentes em `ementa/packages/ui/src/components/`. Essa paleta é a que aparece no print do app.

## 1. Cores do app

### 1.1 Fundos

| Token | Valor | Uso no print |
|-------|-------|--------------|
| `--color-base-100` | `oklch(9% 0.005 260)` | Cor de fundo principal (mais escura) |
| `--color-base-200` | `oklch(13% 0.006 260)` | Sidebar, cards secundários |
| `--color-base-300` | `oklch(18% 0.008 260)` | Fundo de inputs/campos |
| `--color-base-400` | `oklch(24% 0.01 260)` | Bordas, divisórias, hover |

### 1.2 Texto

| Token | Valor | Uso no print |
|-------|-------|--------------|
| `--color-content` | `oklch(96% 0.005 260)` | Texto principal (quase branco) |
| `--color-content-muted` | `oklch(70% 0.012 260)` | Texto secundário, placeholders, ícones inativos |
| `--color-content-subtle` | `oklch(50% 0.012 260)` | Placeholders e textos bem discretos |

### 1.3 Cores de destaque e semânticas

| Token | Valor | Uso no print |
|-------|-------|--------------|
| `--color-accent` | `oklch(74% 0.14 65)` | Botão de envio, destaques, foco |
| `--color-accent-content` | `oklch(15% 0.02 65)` | Texto sobre o botão de destaque |
| `--color-success` | `oklch(72% 0.17 155)` | Estados de sucesso |
| `--color-success-content` | `oklch(15% 0.03 155)` | Texto sobre sucesso |
| `--color-warning` | `oklch(80% 0.16 85)` | Alertas |
| `--color-warning-content` | `oklch(18% 0.03 85)` | Texto sobre warning |
| `--color-error` | `oklch(68% 0.21 25)` | Erros |
| `--color-error-content` | `oklch(97% 0.01 25)` | Texto sobre erro |
| `--color-info` | `oklch(72% 0.14 230)` | Informações |
| `--color-info-content` | `oklch(15% 0.02 230)` | Texto sobre info |

### 1.4 Bordas e raios

| Token | Valor | Uso |
|-------|-------|-----|
| `--radius-sm` | `0.375rem` | 6px — botões pequenos, badges |
| `--radius-md` | `0.625rem` | 10px — inputs, botões padrão, cards |
| `--radius-lg` | `1rem` | 16px — modais, diálogos, cards grandes |
| `--radius-xl` | `1.5rem` | 24px — raios grandes |
| Borda padrão | `1px solid var(--color-base-400)` | Inputs, cards, divisórias |
| Borda ativa | `1px solid var(--color-accent)` | Input com foco, botão selecionado |

### 1.5 Movimento

| Token | Valor | Uso |
|-------|-------|-----|
| `--ease-out` | `cubic-bezier(0.23, 1, 0.32, 1)` | Press, transições rápidas |
| `--ease-in-out` | `cubic-bezier(0.77, 0, 0.175, 1)` | Movimentos modais |
| `--ease-drawer` | `cubic-bezier(0.32, 0.72, 0, 1)` | Drawers |
| `--duration-press` | `140ms` | Botões, toggles |
| `--duration-tooltip` | `160ms` | Tooltips |
| `--duration-dropdown` | `180ms` | Dropdowns |
| `--duration-modal` | `260ms` | Modais |
| `--duration-drawer` | `280ms` | Drawers |

### 1.6 Fontes

| Token | Valor |
|-------|-------|
| `--font-sans` | `ui-sans-serif, system-ui, sans-serif` |

O app usa a fonte do sistema. Não há Google Fonts nem fonte display custom no app.

## 2. Padrões de componentes do app

### 2.1 Botão primário

```tsx
<button className="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-[var(--radius-md)] text-sm font-medium transition-[transform,background-color,border-color,opacity] duration-[var(--duration-press)] ease-[var(--ease-out)] active:scale-[0.97] disabled:pointer-events-none disabled:opacity-50 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-[var(--color-accent)] bg-[var(--color-accent)] text-[var(--color-accent-content)] hover:brightness-110">
  Ação
</button>
```

### 2.2 Botão secundário

```tsx
<button className="... bg-[var(--color-base-300)] text-[var(--color-content)] hover:bg-[var(--color-base-400)]">
  Ação
</button>
```

### 2.3 Input

```tsx
<input className="w-full rounded-[var(--radius-md)] border border-[var(--color-base-400)] bg-[var(--color-base-300)] px-3 py-2 text-sm text-[var(--color-content)] outline-none placeholder:text-[var(--color-content-subtle)] transition-colors duration-[var(--duration-press)] ease-[var(--ease-out)] focus:border-[var(--color-accent)]" />
```

### 2.4 Card / popover

```tsx
<div className="rounded-[var(--radius-lg)] border border-[var(--color-base-400)] bg-[var(--color-base-200)] p-5 shadow-2xl">
  Conteúdo
</div>
```

### 2.5 Item de lista selecionável

```tsx
<div className="flex cursor-default items-center gap-2 rounded-[var(--radius-sm)] px-2.5 py-2 text-sm text-[var(--color-content)] data-[selected=true]:bg-[var(--color-base-300)]">
  Item
</div>
```

## 3. Mapeamento para o clone da landing page

Para alinhar o visual do clone da landing page com o app real, substituir as variáveis da landing por esses valores:

| Variável do clone | Substituir por | Valor OKLCH |
|-------------------|----------------|-------------|
| `--background` | `color-base-100` | `oklch(9% 0.005 260)` |
| `--foreground` | `color-content` | `oklch(96% 0.005 260)` |
| `--surface-1` | `color-base-200` | `oklch(13% 0.006 260)` |
| `--surface-2` | `color-base-300` | `oklch(18% 0.008 260)` |
| `--surface-3` | `color-base-400` | `oklch(24% 0.01 260)` |
| `--primary` / `--ember` | `color-accent` | `oklch(74% 0.14 65)` |
| `--primary-foreground` | `color-accent-content` | `oklch(15% 0.02 65)` |
| `--muted-foreground` | `color-content-muted` | `oklch(70% 0.012 260)` |
| `--border` | `color-base-400` | `oklch(24% 0.01 260)` |
| `--border-strong` | `color-base-400` | `oklch(24% 0.01 260)` |
| `--input` | `color-base-400` | `oklch(24% 0.01 260)` |
| `--ring` | `color-accent` | `oklch(74% 0.14 65)` |
| `--radius` | `radius-md` | `0.625rem` |
| `--font-sans` | `ui-sans-serif` | sem fonte externa |

### Arquivo de override sugerido

`public/app-override.css` redefinindo `:root` com os valores acima e carregado **depois** de `clone-styles.css` em `index.html`. Ver `public/app-override.css` do `ementa-landing-page`.
