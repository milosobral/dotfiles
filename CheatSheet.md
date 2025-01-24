# Terminal Configuration Cheat Sheet

## Tmux
### Leader Key
- `<Leader>` → `Ctrl + Space`

### Window Management
- `<Leader>c` → Open a new window
- `Ctrl + l` → Go to the window on the right
- `Ctrl + h` → Go to the window on the left

### Copy-Paste
- `<Leader>[` → Open a prompt as a buffer to copy-paste in the terminal

---

## Neovim
### Leader Key
- `<Leader>` → `Space`

### Buffer Management
- `<Leader><Leader>` → Search open buffers
- `<Tab>` → Select buffer
- `Ctrl + d` → Close selected buffers

### Search
- `<Leader>s` → Search
  - `f` → Search files in the current project
  - `n` → Search Neovim config files

### AI Commands
- `<Leader>a` → Avante
  - `a` → Open the chat window
  - `e` → Edit selected code with another prompt
  - `Ctrl + f` → Accept the Copilot suggestion

### Window Options
- `Ctrl + w` → Open window options
  - `v` → Vertical split
  - `|` → Set the current window to maximum width
  - `=` → Set all windows to equal width

### Navigation
- `Ctrl + k` → Go to the window to the right
- `Ctrl + j` → Go to the window to the left
- `[[` / `]]` → Go to the previous/next function start

---

## ZSH
### General Commands
- `c` → Clear terminal
- `gca` → Add and commit changes
- `gst` → Git status

### Navigation with Zoxide
- `cd <partial_name>` → Change directory using a partial name (autocompleted by Zoxide)

