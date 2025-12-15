local config = require 'spacebox.config'

local colorscheme = {
  standardWhite = '#ffffff',
  standardBlack = '#1e1e1e',
}

if vim.o.background == 'light' then
  colorscheme.editorBackground = config.transparent and 'none' or '#ffffff'
  colorscheme.sidebarBackground = '#dddddd'
  colorscheme.popupBackground = '#f6f6f6'
  colorscheme.floatingWindowBackground = '#e0e0e0'
  colorscheme.menuOptionBackground = '#ededed'

  colorscheme.mainText = '#616161'
  colorscheme.emphasisText = '#212121'
  colorscheme.commandText = '#333333'
  colorscheme.inactiveText = '#9e9e9e'
  colorscheme.disabledText = '#d0d0d0'
  colorscheme.lineNumberText = '#a1a1a1'
  colorscheme.selectedText = '#424242'
  colorscheme.inactiveSelectionText = '#757575'

  colorscheme.windowBorder = '#c2c3c5'
  colorscheme.focusedBorder = '#aaaaaa'
  colorscheme.emphasizedBorder = '#999999'

  colorscheme.syntaxFunction = '#6871ff'
  colorscheme.syntaxError = '#d6656a'
  colorscheme.syntaxKeyword = '#9966cc'
  colorscheme.errorText = '#d32f2f'
  colorscheme.warningText = '#f29718'
  colorscheme.linkText = '#1976d2'
  colorscheme.commentText = '#848484'
  colorscheme.stringText = '#dd8500'
  colorscheme.successText = '#22863a'
  colorscheme.warningEmphasis = '#cd9731'
  colorscheme.specialKeyword = '#800080'
  colorscheme.syntaxOperator = '#a1a1a1'
  colorscheme.foregroundEmphasis = '#000000'
  colorscheme.terminalGray = '#333333'
else
  -- SpaceBox Dark Theme Colors
  colorscheme.editorBackground = config.transparent and 'none' or '#0d1116'
  colorscheme.sidebarBackground = '#010409'
  colorscheme.popupBackground = '#1f2329'
  colorscheme.floatingWindowBackground = '#282d36'
  colorscheme.menuOptionBackground = '#30353d'

  colorscheme.mainText = '#d6dee6'
  colorscheme.emphasisText = '#dee0e2'
  colorscheme.commandText = '#c9d2e2'
  colorscheme.inactiveText = '#7c8188'
  colorscheme.disabledText = '#444c58'
  colorscheme.lineNumberText = '#444c58'
  colorscheme.selectedText = '#dee0e2'
  colorscheme.inactiveSelectionText = '#7c8188'

  colorscheme.windowBorder = '#25313e'
  colorscheme.focusedBorder = '#0894f8'
  colorscheme.emphasizedBorder = '#0083e2'

  -- Syntax colors from SpaceBox tokenColors
  colorscheme.syntaxError = '#FF5370'
  colorscheme.syntaxFunction = '#E4B067'
  colorscheme.warningText = '#ff8000'
  colorscheme.syntaxKeyword = '#5494FB'
  colorscheme.linkText = '#0097fb'
  colorscheme.stringText = '#E4B067'
  colorscheme.warningEmphasis = '#ff8000'
  colorscheme.successText = '#5ab856'
  colorscheme.errorText = '#FF5370'
  colorscheme.specialKeyword = '#5494FB'
  colorscheme.commentText = '#777777'
  colorscheme.syntaxOperator = '#cccece'
  colorscheme.foregroundEmphasis = '#ffffff'
  colorscheme.terminalGray = '#666666'
  
  -- Additional SpaceBox specific colors
  colorscheme.variableText = '#a26ec5'
  colorscheme.numberText = '#5ab856'
  colorscheme.classText = '#FFCB6B'
  colorscheme.typeText = '#0095cf'
end

return colorscheme
