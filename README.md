# Dotfiles Setup

These are my personal configuration files for Alacritty, tmux, Neovim, Zsh, and Powerlevel10k, along with JetBrainsMono Nerd Font.

## Installation

To set up the environment on any machine, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/dotfiles.git
   ```

2. Navigate into the directory and run the setup script:
   ```bash
   cd dotfiles
   ./setup.sh
   ```

3. After installation, change your terminal font to **JetBrainsMono Nerd Font** in your terminal settings.

4. Restart your terminal for all changes to take effect.

## Included Configurations

This setup includes configuration files for the following tools:

- **Alacritty**: Terminal emulator configuration.
- **tmux**: Terminal multiplexer configuration.
- **Neovim**: Custom Neovim setup with plugins and shortcuts.
- **Zsh & Powerlevel10k**: Zsh configuration with the Powerlevel10k prompt for a beautiful terminal experience.

## Customizations

### Alacritty

The Alacritty configuration includes customizations for appearance, font, and keybindings. After setup, ensure your font is set to **JetBrainsMono Nerd Font**. You can adjust the font size in `alacritty.toml`.

### tmux

The `tmux` configuration file (`.tmux.conf`) includes shortcuts for better terminal management. You can customize it further to fit your workflow.

### Neovim

The Neovim configuration (`init.lua` or `init.vim`) contains basic settings, plugin installations, and keybindings. Feel free to modify it for your personal preference.

### Zsh and Powerlevel10k

Zsh is configured with the Powerlevel10k theme. After installation, you might want to configure your prompt by running:

```bash
p10k configure
```

This will guide you through personalizing the prompt with various styles and features.

## Font Installation

The setup script automatically installs **JetBrainsMono Nerd Font**, which is required for proper rendering of icons in Powerlevel10k and other tools. The font is installed to `~/.local/share/fonts` and the system font cache is refreshed.

Make sure to set **JetBrainsMono Nerd Font** as your terminal font after installation.

## Additional Notes

- Ensure you restart your terminal after installation to apply all the changes.
- You can customize each configuration file as needed to fit your environment and workflow.
