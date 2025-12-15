local config = require 'spacebox.config'

local colorscheme = {
  standardWhite = '#ffffff',
  standardBlack = '#1e1e1e',
}

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

return colorscheme
