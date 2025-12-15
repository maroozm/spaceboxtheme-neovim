local bufferline = require 'spacebox.integrations.bufferline'
local cmp = require 'spacebox.integrations.cmp'
local colorscheme = require 'spacebox.colorscheme'
local config = require 'spacebox.config'
local utils = require 'spacebox.utils'
local theme = {}

local function set_terminal_colors()
  -- SpaceBox terminal colors from VS Code theme
  vim.g.terminal_color_0 = '#000D1C'  -- ansiBlack
  vim.g.terminal_color_1 = '#EF56FF'  -- ansiRed
  vim.g.terminal_color_2 = '#8E76FF'  -- ansiGreen
  vim.g.terminal_color_3 = '#735AFF'  -- ansiYellow
  vim.g.terminal_color_4 = '#2B4FFF'  -- ansiBlue
  vim.g.terminal_color_5 = '#2883FF'   -- ansiMagenta
  vim.g.terminal_color_6 = '#28B9FF'  -- ansiCyan
  vim.g.terminal_color_7 = '#F1F1F1'  -- ansiWhite
  vim.g.terminal_color_8 = '#666666'  -- ansiBrightBlack
  vim.g.terminal_color_9 = '#DE72FF'  -- ansiBrightRed
  vim.g.terminal_color_10 = '#9891FF' -- ansiBrightGreen
  vim.g.terminal_color_11 = '#A3A0FF' -- ansiBrightYellow
  vim.g.terminal_color_12 = '#5C78FF' -- ansiBrightBlue
  vim.g.terminal_color_13 = '#5EA2FF' -- ansiBrightMagenta
  vim.g.terminal_color_14 = '#5AC8FF' -- ansiBrightCyan
  vim.g.terminal_color_15 = '#FFFFFF' -- ansiBrightWhite
  vim.g.terminal_color_background = colorscheme.editorBackground
  vim.g.terminal_color_foreground = '#C9CCE6' -- terminal.foreground
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.editorBackground
  -- SpaceBox diff colors from VS Code theme
  local diff_add = '#C3E88D' -- markup.inserted
  local diff_delete = '#FF5370' -- markup.deleted
  local diff_change = '#C792EA' -- markup.changed
  local diff_text =
    utils.shade(colorscheme.warningEmphasis, 0.5, colorscheme.editorBackground)

  local groups = {
    -- base
    Normal = { fg = colorscheme.mainText, bg = bg },
    LineNr = { fg = colorscheme.lineNumberText },
    ColorColumn = {
      bg = utils.shade(colorscheme.linkText, 0.5, colorscheme.editorBackground),
    },
    Conceal = {},
    Cursor = { fg = colorscheme.editorBackground, bg = colorscheme.mainText },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colorscheme.popupBackground },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colorscheme.syntaxFunction },
    DiffAdd = { bg = bg, fg = diff_add },
    DiffChange = { bg = bg, fg = diff_change },
    DiffDelete = { bg = bg, fg = diff_delete },
    DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colorscheme.syntaxKeyword },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colorscheme.syntaxError },
    VertSplit = { fg = colorscheme.windowBorder, bg = bg },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colorscheme.mainText, bg = colorscheme.popupBackground },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = {
      bg = utils.mix(
        colorscheme.syntaxFunction,
        colorscheme.editorBackground,
        math.abs(0.30)
      ),
      fg = colorscheme.editorBackground,
    },
    Substitute = { link = 'IncSearch' },
    CursorLineNr = { fg = '#8691a1' }, -- SpaceBox active line number
    MatchParen = { fg = colorscheme.syntaxError, bg = bg },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colorscheme.syntaxFunction },
    NonText = { fg = utils.shade(colorscheme.editorBackground, 0.30) },
    NormalFloat = { bg = colorscheme.floatingWindowBackground },
    NormalNC = { link = 'Normal' },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { bg = colorscheme.menuOptionBackground },
    PmenuSbar = {
      bg = utils.shade(
        colorscheme.syntaxFunction,
        0.5,
        colorscheme.editorBackground
      ),
    },
    PmenuThumb = { bg = utils.shade(colorscheme.editorBackground, 0.20) },
    Question = { fg = colorscheme.syntaxFunction },
    QuickFixLine = { fg = colorscheme.syntaxFunction },
    SpecialKey = { fg = colorscheme.syntaxOperator },
    StatusLine = { fg = colorscheme.mainText, bg = bg },
    StatusLineNC = {
      fg = colorscheme.inactiveText,
      bg = colorscheme.sidebarBackground,
    },
    TabLine = {
      bg = colorscheme.sidebarBackground,
      fg = colorscheme.inactiveText,
    },
    TabLineFill = { link = 'TabLine' },
    TabLineSel = {
      bg = colorscheme.editorBackground,
      fg = colorscheme.emphasisText,
    },
    Search = { bg = utils.mix('#5060ee', colorscheme.editorBackground, 0.54) }, -- SpaceBox search/match highlight
    SpellBad = { undercurl = true, sp = colorscheme.syntaxError },
    SpellCap = { undercurl = true, sp = colorscheme.syntaxFunction },
    SpellLocal = { undercurl = true, sp = colorscheme.syntaxKeyword },
    SpellRare = { undercurl = true, sp = colorscheme.warningText },
    Title = { fg = colorscheme.syntaxFunction },
    Visual = {
      bg = utils.mix('#0b6cb1', colorscheme.editorBackground, 0.53), -- SpaceBox selection background
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colorscheme.warningText },
    Whitespace = { fg = colorscheme.syntaxOperator },
    WildMenu = { bg = colorscheme.menuOptionBackground },
    Comment = {
      fg = colorscheme.commentText,
      italic = config.italics.comments or false,
    },

    Constant = { fg = colorscheme.numberText },
    String = {
      fg = colorscheme.stringText,
      italic = config.italics.strings or false,
    },
    Character = { fg = colorscheme.stringText },
    Number = { fg = colorscheme.numberText },
    Boolean = { fg = colorscheme.numberText },
    Float = { link = 'Number' },

    Identifier = { fg = colorscheme.variableText },
    Function = { fg = colorscheme.syntaxFunction },
    Method = { fg = colorscheme.syntaxFunction },
    Property = { fg = colorscheme.syntaxFunction },
    Field = { link = 'Property' },
    Parameter = { fg = colorscheme.variableText },
    Statement = { fg = colorscheme.syntaxKeyword },
    Conditional = { fg = colorscheme.syntaxKeyword },
    -- Repeat = {},
    Label = { fg = colorscheme.syntaxFunction },
    Operator = { fg = colorscheme.syntaxOperator },
    Keyword = { fg = colorscheme.syntaxKeyword, italic = config.italics.keywords or false },
    Exception = { fg = colorscheme.syntaxError },

    PreProc = { link = 'Keyword' },
    -- Include = {},
    Define = { fg = colorscheme.syntaxKeyword },
    Macro = { link = 'Define' },
    PreCondit = { fg = colorscheme.syntaxKeyword },

    Type = { fg = colorscheme.typeText },
    Struct = { link = 'Type' },
    Class = { fg = colorscheme.classText },

    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Attribute = { link = 'Character' },
    Punctuation = { fg = colorscheme.syntaxOperator },
    Special = { fg = colorscheme.syntaxOperator },

    SpecialChar = { fg = colorscheme.syntaxError },
    Tag = { fg = colorscheme.stringText },
    Delimiter = { fg = colorscheme.syntaxOperator },
    -- SpecialComment = {},
    Debug = { fg = colorscheme.specialKeyword },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colorscheme.editorBackground },
    Error = { link = 'ErrorMsg' },
    Todo = { fg = colorscheme.warningText, bold = true },

    -- LspReferenceText = {},
    -- LspReferenceRead = {},
    -- LspReferenceWrite = {},
    -- LspCodeLens = {},
    -- LspCodeLensSeparator = {},
    -- LspSignatureActiveParameter = {},

    DiagnosticError = { link = 'Error' },
    DiagnosticWarn = { link = 'WarningMsg' },
    DiagnosticInfo = { fg = colorscheme.syntaxFunction },
    DiagnosticHint = { fg = colorscheme.warningEmphasis },
    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
    DiagnosticUnderlineError = { undercurl = true, link = 'DiagnosticError' },
    DiagnosticUnderlineWarn = { undercurl = true, link = 'DiagnosticWarn' },
    DiagnosticUnderlineInfo = { undercurl = true, link = 'DiagnosticInfo' },
    DiagnosticUnderlineHint = { undercurl = true, link = 'DiagnosticHint' },
    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingWarn = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingHint = {},
    -- DiagnosticSignError = {},
    -- DiagnosticSignWarn = {},
    -- DiagnosticSignInfo = {},
    -- DiagnosticSignHint = {},

    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    ['@text'] = { fg = colorscheme.mainText },
    ['@text.literal'] = { link = 'Property' },
    -- ["@text.reference"] = {},
    ['@text.strong'] = { link = 'Bold' },
    ['@text.italic'] = { link = 'Italic' },
    ['@text.title'] = { link = 'Keyword' },
    ['@text.uri'] = {
      fg = colorscheme.linkText,
      sp = colorscheme.linkText,
      underline = true,
    },
    ['@text.underline'] = { link = 'Underlined' },
    ['@symbol'] = { fg = colorscheme.syntaxOperator },
    ['@text.todo'] = { link = 'Todo' },
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Punctuation' },
    ['@punctuation.bracket'] = { fg = colorscheme.warningEmphasis },
    ['@punctuation.delimiter'] = { fg = colorscheme.syntaxError },
    ['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colorscheme.syntaxError },
    ['@punctuation.separator.keyvalue'] = { fg = colorscheme.syntaxError },

    ['@text.diff.add'] = { fg = colorscheme.successText },
    ['@text.diff.delete'] = { fg = colorscheme.errorText },

    ['@constant'] = { fg = colorscheme.numberText },
    ['@constant.builtin'] = { fg = colorscheme.numberText },
    ['@constant.builtin'] = { fg = colorscheme.numberText },
    -- ["@constancolorscheme.macro"] = {},
    -- ["@define"] = {},
    -- ["@macro"] = {},
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = utils.shade(colorscheme.stringText, 0.45) },
    ['@string.special'] = { fg = utils.shade(colorscheme.syntaxFunction, 0.45) },
    -- ["@character"] = {},
    -- ["@character.special"] = {},
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    -- ["@float"] = {},
    ['@function'] = {
      fg = colorscheme.syntaxFunction,
      italic = config.italics.functions or false,
    },
    ['@function.call'] = { fg = colorscheme.syntaxFunction },
    ['@function.builtin'] = { fg = colorscheme.syntaxFunction },
    -- ["@function.macro"] = {},
    ['@parameter'] = { fg = colorscheme.variableText },
    ['@method'] = { fg = colorscheme.syntaxFunction },
    ['@field'] = { fg = colorscheme.syntaxFunction },
    ['@property'] = { fg = colorscheme.syntaxFunction },
    ['@constructor'] = { fg = colorscheme.syntaxFunction },
    -- ["@conditional"] = {},
    -- ["@repeat"] = {},
    ['@label'] = { link = 'Label' },
    ['@operator'] = { link = 'Operator' },
    ['@exception'] = { link = 'Exception' },
    ['@variable'] = {
      fg = colorscheme.variableText,
      italic = config.italics.variables or false,
    },
    ['@variable.builtin'] = { fg = colorscheme.syntaxError },
    ['@variable.member'] = { fg = colorscheme.variableText },
    ['@variable.parameter'] = {
      fg = colorscheme.variableText,
      italic = config.italics.variables or false,
    },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { fg = colorscheme.typeText },
    ['@type.builtin'] = { fg = colorscheme.typeText },
    ['@type.qualifier'] = { fg = colorscheme.syntaxKeyword },
    ['@keyword'] = { link = 'Keyword' },
    -- ["@storageclass"] = {},
    -- ["@structure"] = {},
    ['@namespace'] = { link = 'Type' },
    ['@annotation'] = { link = 'Label' },
    -- ["@include"] = {},
    -- ["@preproc"] = {},
    ['@debug'] = { fg = colorscheme.specialKeyword },
    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Tag' },
    ['@tag.delimiter'] = { fg = colorscheme.syntaxOperator },
    ['@tag.attribute'] = { fg = colorscheme.syntaxKeyword },
    ['@tag.jsx.element'] = { fg = colorscheme.syntaxFunction },
    ['@attribute'] = { fg = colorscheme.syntaxKeyword },
    ['@error'] = { link = 'Error' },
    ['@warning'] = { link = 'WarningMsg' },
    ['@info'] = { fg = colorscheme.syntaxFunction },

    -- Specific languages
    -- overrides
    ['@label.json'] = { fg = colorscheme.syntaxFunction }, -- For json
    ['@label.help'] = { link = '@text.uri' }, -- For help files
    ['@text.uri.html'] = { underline = true }, -- For html

    -- semantic highlighting
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.type'] = { fg = colorscheme.typeText },
    ['@lsp.type.class'] = { fg = colorscheme.classText },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { fg = colorscheme.numberText },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.parameter'] = { fg = colorscheme.variableText },
    ['@lsp.type.property'] = { fg = colorscheme.syntaxFunction },
    ['@lsp.type.function'] = { fg = colorscheme.syntaxFunction },
    ['@lsp.type.method'] = { fg = colorscheme.syntaxFunction },
    ['@lsp.type.macro'] = { link = '@label' },
    ['@lsp.type.decorator'] = { fg = colorscheme.syntaxFunction },
    ['@lsp.typemod.function.declaration'] = { fg = colorscheme.syntaxFunction },
    ['@lsp.typemod.function.readonly'] = { fg = colorscheme.syntaxFunction },
  }

  -- integrations
  groups = vim.tbl_extend('force', groups, cmp.highlights())

  -- overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides()
      or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, values) }
  )

  theme.bufferline = { highlights = {} }
  theme.bufferline.highlights = bufferline.highlights(config)
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for SpaceBox colorscheme',
      vim.log.levels.ERROR,
      { title = 'SpaceBox Theme' }
    )
    return
  end

  vim.api.nvim_command 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.api.nvim_command 'syntax reset'
  end

  vim.g.VM_theme_set_by_colorscheme = true
  vim.o.termguicolors = true
  vim.g.colors_name = 'spacebox'

  set_terminal_colors()
  set_groups()
end

return theme
