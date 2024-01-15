-- local vault_path = vim.fn.expand("$obsidian_vault_path")

local opts = {
  workspaces = {
    {
      name = "personal",
      path = vim.fn.expand("~") .. "/Documents/obsidian/obsidian",
    },
  },
  completion = { -- This was taken from the docs
    -- If using nvim-cmp, otherwise set to false
    nvim_cmp = true,
    -- Trigger completion at 2 chars
    min_chars = 2,
    -- Where to put new notes created from completion. Valid options are
    --  * "current_dir" - put new notes in same directory as the current buffer.
    --  * "notes_subdir" - put new notes in the default notes subdirectory.
    new_notes_location = "current_dir",

    -- Control how wiki links are completed with these options:

    -- Whether to add the note ID during completion.
    -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
    -- Mutually exclusive with 'prepend_note_path' and 'use_path_only'.
    prepend_note_id = true,

    -- Whether to add the note path during completion.
    -- E.g. "[[Foo" completes to "[[notes/foo|Foo]]" assuming "notes/foo.md" is the path of the note.
    -- Mutually exclusive with 'prepend_note_id' and 'use_path_only'.
    prepend_note_path = false,

    -- Whether to only use paths during completion.
    -- E.g. "[[Foo" completes to "[[notes/foo]]" assuming "notes/foo.md" is the path of the note.
    -- Mutually exclusive with 'prepend_note_id' and 'prepend_note_path'.
    use_path_only = false,
  },

  daily_notes = {
    folder = "001-Journal/DailyReport/Daily/",
    date_format = "%Y-%m-%d_%a",
    template = "Template-DailyReport-Daily.md",
  },
  templates = {
    subdir = "000-Config/Templater",
    date_format = "%Y-%m-%d_%a",
    time_format = "%H:%M",
  },
  -- use_advanced_uri = false, -- this is a breaking change

  -- -- Specify how to handle attachments.
  -- attachments = { -- This was taken from the docs
  --   -- The default folder to place images in via `:ObsidianPasteImg`.
  --   -- If this a relative path it will be interpreted as relative to the vault root.
  --   -- You can always override this per image by passing a full path to the command instead of just a filename.
  --   img_folder = "assets", -- This is the default
  --   -- A function that determines the text to insert in the note when pasting an image.
  --   -- It takes two arguments, the `obsidian.Client` and a plenary `Path` to the image file.
  --   -- The is the default implementation.
  --   ---@param client obsidian.Client
  --   ---@param path Path the absolute path to the image file
  --   ---@return string
  --   img_text_func = function(client, path)
  --     local link_path
  --     local vault_relative_path = client:vault_relative_path(path)
  --     if vault_relative_path ~= nil then
  --       -- Use relative path if the image is saved in the vault dir.
  --       link_path = vault_relative_path
  --     else
  --       -- Otherwise use the absolute path.
  --       link_path = tostring(path)
  --     end
  --     local display_name = vim.fs.basename(link_path)
  --     return string.format("![[%s]]", display_name, link_path)
  --     -- Modified From the docs
  --   end,
  -- },
  -- open_app_foreground = true,
}

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre "
    .. vim.fn.expand("~")
    .. "/Documents/obsidian/obsidian/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Documents/obsidian/obsidian/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- see below for full list of optional dependencies 👇
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    vim.opt.conceallevel = 1
    -- vim.cmds = cmds
    local obsidian = require("obsidian")
    obsidian.setup(opts)
    -- import nvim-cmp plugin (completions plugin)
    -- local cmp = require("cmp")
    --
    -- cmp.setup({
    --   sources = cmp.config.sources({
    --     { name = "obsidian", option = opts },
    --     { name = "obsidian_new", option = opts },
    --   }),
    -- })
  end,
}
