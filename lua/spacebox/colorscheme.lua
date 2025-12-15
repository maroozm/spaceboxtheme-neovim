local config = require 'spacebox.config'

local colorscheme = {
  standardWhite = '#ffffff',
  standardBlack = '#1e1e1e',
}

-- SpaceBox Nova Theme Colors
colorscheme.editorBackground = config.transparent and 'none' or '#131822'
colorscheme.sidebarBackground = '#131822'
colorscheme.popupBackground = '#1b2029'
colorscheme.floatingWindowBackground = '#242c3a'
colorscheme.menuOptionBackground = '#333c4b'

colorscheme.mainText = '#d6dee6'
colorscheme.emphasisText = '#e7f1ff'
colorscheme.commandText = '#c9d2e2'
colorscheme.inactiveText = '#818a97'
colorscheme.disabledText = '#444c58'
colorscheme.lineNumberText = '#444c58'
colorscheme.selectedText = '#e7f1ff'
colorscheme.inactiveSelectionText = '#818a97'

colorscheme.windowBorder = '#242c3a'
colorscheme.focusedBorder = '#9553ff'
colorscheme.emphasizedBorder = '#7835ff'

-- Syntax colors from SpaceBox Nova tokenColors
colorscheme.syntaxError = '#FF5370'
colorscheme.syntaxFunction = '#f0c07d'
colorscheme.warningText = '#ffa23e'
colorscheme.syntaxKeyword = '#5494FB'
colorscheme.linkText = '#af87ff'
colorscheme.stringText = '#f0c07d'
colorscheme.warningEmphasis = '#cd9731'
colorscheme.successText = '#34c36f'
colorscheme.errorText = '#ff6c7f'
colorscheme.specialKeyword = '#5494FB'
colorscheme.commentText = '#6b7279'
colorscheme.syntaxOperator = '#cccece'
colorscheme.foregroundEmphasis = '#ffffff'
colorscheme.terminalGray = '#666666'

-- Additional SpaceBox Nova specific colors
colorscheme.variableText = '#b690ff'
colorscheme.numberText = '#34c36f'
colorscheme.classText = '#FFCB6B'
colorscheme.typeText = '#0095cf'
colorscheme.blockVariableText = '#f07178'

return colorscheme
