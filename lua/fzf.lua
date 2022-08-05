local actions = require "fzf-lua.actions"
require'fzf-lua'.setup {
  files = {
    find_opts = [[-type f -not -path '*/\.git/*' -not -path '*/target/*' -printf '%P\n']],
  }
}
