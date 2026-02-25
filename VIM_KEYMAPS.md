# Vim 快捷键映射汇总

> 本文件整理了当前 Vim 配置中的所有快捷键映射，按模式分类
> 最后更新: 2026-02-25

---

## Leader 键定义

| 文件 | Leader 键 | 说明 |
|------|-----------|------|
| `my_configs.vim` | `;` (分号) | 主配置文件的 Leader |
| `vimrcs/basic.vim` | `,` (逗号) | 基础配置的 Leader |

> **提示**: 使用 `<Leader>` 前缀的快捷键都需要先按 Leader 键再按后续键

---

## 1. 普通模式 (Normal Mode) - nnoremap

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `<Leader>nf` | `:NERDTreeToggle<CR>` | 切换文件树面板 |
| `<Leader>n` | `<c-]>` | 跳转到标签定义 |
| `<Leader>b` | `<c-t>` | 跳回上一个标签 |
| `<Leader>z` | `:Goyo<cr>` | 切换专注模式 (Goyo 插件) |
| `<Leader>d` | `:GitGutterToggle<cr>` | 切换 Git 状态显示 |
| `<Leader>tt` | `:TagbarToggle<cr>` | 切换代码结构面板 |
| `<Leader>m` | `mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm` | 删除所有空行 |
| `<Leader>v` | `:.GBrowse!<CR>` | 在 GitHub 上查看���前行 |
| `<F3>` | `:Autoformat<CR>` | 自动格式化代码 |
| `<F5>` | `:!ctags -R *<CR>` | 重新生成 tags 文件 |

---

## 2. 可视模式 (Visual Mode) - vnoremap

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `<Leader>y` | `"+y` | 复制选中的内容到系统剪贴板 |
| `<Leader>p` | `"+p` | 从系统剪贴板粘贴 |
| `*` | `:call VisualSelection('f')<CR>` | 向前搜索选中的内容 |
| `#` | `:call VisualSelection('b')<CR>` | 向后搜索选中的内容 |
| `gv` | `:call VisualSelection('gv', '')<CR>` | 重新选中上次选中的区域 |
| `<Leader>r` | `:call VisualSelection('replace')<CR>` | 替换选中的内容 |
| `<Leader>v` | `:'<'>GBrowse!<CR>` | 在 GitHub 上查看选中部分 |

### 括号自动包围 (Visual 模式下选中内容后自动加括号)

| 快捷键 | 输入 | 结果 |
|--------|------|------|
| `$1` | 选中文字后按 `$1` | `(选中文字)` |
| `$2` | 选中文字后按 `$2` | `[选中文字]` |
| `$3` | 选中文字后按 `$3` | `{选中文字}` |
| `$$` | 选中文字后按 `$$` | `"选中文字"` |
| `$q` | 选中文字后按 `$q` | `'选中文字'` |
| `$e` | 选中文字后按 `$e` | `` `选中文字` `` |

---

## 3. 插入模式 (Insert Mode) - inoremap

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `$1` | `()<esc>i` | 插入 `()` 并将光标移到中间 |
| `$2` | `[]<esc>i` | 插入 `[]` 并将光标移到中间 |
| `$3` | `{}<esc>i` | 插入 `{}` 并将光标移到中间 |
| `$4` | `{<esc>o}<esc>O` | 插入 `{}` 并在新行输入，光标移到中间行 |
| `$q` | `''<esc>i` | 插入 `''` 并将光标移到中间 |
| `$e` | `""<esc>i` | 插入 `""` 并将光标移到中间 |
| `$t` | ` <><esc>i` | 插入 `<>` 并将光标移到中间 |

### Python 文件专用 (FileType: python)

| 快捷键 | 展开为 |
|--------|--------|
| `$r` | `return ` |
| `$i` | `import ` |
| `$p` | `print ` |
| `$f` | `# --- ` (注释分隔符) |

### JavaScript/TypeScript 文件专用

| 快捷键 | 展开为 |
|--------|--------|
| `$r` | `return ` |
| `$f` | `// --- PH` (注释分隔符) |

---

## 4. 命令行模式 (Command-line Mode) - cnoremap

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `<C-A>` | `<Home>` | 跳转到命令行开头 |
| `<C-E>` | `<End>` | 跳转到命令行结尾 |
| `<C-K>` | `<C-U>` | 删除光标到行尾的所有内容 |
| `<C-P>` | `<Up>` | 向上浏览历史命令 |
| `<C-N>` | `<Down>` | 向下浏览历史命令 |

---

## 5. 通用映射 (noremap - 同时作用于 Normal 和 Visual)

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `<Leader>y` | `"+y` | 复制到系统剪贴板 (Normal 也可用) |
| `<Leader>p` | `"+p` | 从系统剪贴板粘贴 (Normal 也可用) |
| `<Leader>n` | `<c-]>` | 跳转到标签定义 |
| `<Leader>b` | `<c-t>` | 跳回上一个标签 |

---

## 6. 禁用按键 (防止方向键)

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `<Up>` | `<Nop>` | 禁用向上方向键 |
| `<Down>` | `<Nop>` | 禁用向下方向键 |
| `<Left>` | `<Nop>` | 禁用向左方向键 |
| `<Right>` | `<Nop>` | 禁用向右方向键 |

> **说明**: 禁用方向键是为了强制使用 `h/j/k/l` 导航，提高效率

---

## 常用快捷键速查

| 模式 | 操作 | 快捷键 |
|------|------|--------|
| Normal | 复制到剪贴板 | `<Leader>y` |
| Normal | 从剪贴板粘贴 | `<Leader>p` |
| Normal | 跳转到定义 | `<Leader>n` |
| Normal | 跳转回 | `<Leader>b` |
| Normal | 打开文件树 | `<Leader>nf` |
| Normal | 打开代码结构 | `<Leader>tt` |
| Normal | 切换 Git 显示 | `<Leader>d` |
| Normal | 专注模式 | `<Leader>z` |
| Visual | 复制选区 | `<Leader>y` |
| Visual | 搜索选区 | `*` 或 `#` |
| Insert | 快速括号 | `$1` `$2` `$3` `$4` |
| Insert | 快速引号 | `$q` `$e` |
| Cmd | 命令行快捷 | `<C-A>` `<C-E>` `<C-P>` `<C-N>` |

---

## 文件位置

- 主配置文件: `my_configs.vim`
- 插件配置: `plugins_config.vim`
- 基础配置: `vimrcs/basic.vim`
- 扩展配置: `vimrcs/extended.vim`
- 文件类型配置: `vimrcs/filetypes.vim`
