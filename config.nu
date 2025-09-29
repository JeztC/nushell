# config.nu
#
# Installed by:
# version = "0.106.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
$env.PROMPT_COMMAND = {
  let path = (ansi "#3A96DD") + $env.PWD + (ansi reset)
  $path
}

$env.PROMPT_INDICATOR = { (ansi reset) + "> " + (ansi reset) }


$env.config = {
    show_banner: false
    ls: {
        use_ls_colors: false
    }
table: {
    mode: rounded
  }
  color_config: {
    separator: white
    header: "#3A96DD"  # Headers (name, type, size, modified)
    row_index: "#3A96DD"  # Row numbers
    shape_external: cyan
    shape_externalarg: "#3A96DD"
    shape_closure: green_bold
  }
    keybindings: [
        {
            name: clear_command
            modifier: none
            keycode: Esc
            mode: [emacs, vi_normal, vi_insert]
            event: { edit: Clear }
        }
    ]
}
