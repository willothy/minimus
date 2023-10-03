vim.opt.background = 'dark'
vim.g.colors_name = 'minimus'

local lush = require 'lush'
local hsl = require('lush').hsl
local p = require 'minimus'

local spec = {
  -- bg = hsl '#26283f', --p.gunmetal,
  bg = p.dark_blue,
  -- bg = require 'lush.hsl' '#26283f',
  bg2 = p.gunmetal.lighten(4),
  bg3 = p.gunmetal.lighten(8),
  kw = p.blue.darken(10),
  ident = p.uranian_blue,
  text = p.text,
  -- lnr = p.text.darken(20),
  lnr = hsl '#9196c2',
}

local nobg = false

---@diagnostic disable: undefined-global
local base = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    CopilotStatusOk { fg = p.turquoise, bg = p.gunmetal },
    CopilotStatusError { fg = p.red, bg = p.gunmetal },
    Conceal { bg = 'none' },
    Normal { bg = nobg and 'none' or spec.bg, fg = spec.text, bold = false },
    NormalNC { bg = nobg and 'none' or spec.bg, fg = spec.text.darken(30).desaturate(50), bold = false },
    NormalFloat { bg = nobg and 'none' or spec.bg.darken(10), fg = spec.text, bold = false },
    NormalFloatNC { bg = nobg and 'none' or spec.bg.darken(10), fg = spec.text.darken(30).desaturate(50), bold = false },
    NormalFloatInv { fg = spec.bg.darken(10), bg = 'NONE', bold = false },
    CmdlineBorder { fg = spec.bg, bg = spec.bg.darken(10) },
    FloatBorder { fg = p.pale_azure.darken(15), bg = spec.bg.darken(10) },
    FloatTitle { fg = p.blue, bg = spec.bg.darken(10) },
    HydraBorder { link = 'CurrentMode' },
    Visual { bg = spec.bg3 },
    VisualNOS { bg = spec.bg3 },
    NonText { bg = 'none' },
    Directory { fg = p.blue, bold = false },
    DiffAdd { fg = p.turquoise },
    DiffChange { fg = p.lemon_chiffon },
    DiffDelete { fg = p.red },
    DiffText { fg = p.pale_azure },
    EndOfBuffer { bg = 'none' },
    Whitespace { bg = 'none' },
    Underlined { gui = 'underline' },
    WildMenu { fg = p.pale_azure },
    WinSeparator { fg = spec.bg2.saturate(20) },
    -- Mode indicators
    NormalMode { fg = p.turquoise },
    InsertMode { fg = p.pale_azure },
    VisualMode { fg = p.lemon_chiffon },
    ReplaceMode { fg = p.lavender_pink },
    CommandMode { fg = p.peach },
    SelectMode { fg = p.lemon_chiffon },
    TerminalMode { fg = p.peach },
    TerminalNormalMode { fg = p.turquoise },
    --
    -- Cursor
    Cursor { fg = '#1f1f1f', bg = '#fefefe' },
    iCursor { Cursor },
    --
    -- Terminal
    TermCursor { bg = p.text, fg = p.gunmetal },
    TermCursorNC { fg = p.text },
    ErrorMsg { fg = p.red },
    --
    -- Windows
    VertSplit { fg = p.cool_gray, bg = 'none' },
    Winseparator { fg = p.cool_gray.saturate(10).darken(50), bg = 'none' },
    --
    -- Folds
    Folded { fg = p.cool_gray, bg = 'none' },
    FoldColumn { bg = 'none' },
    --
    -- Sign Column
    SignColumn { bg = 'none' },
    LineNr { bg = 'none', fg = spec.lnr, gui = 'bold' },
    CursorLineNr {
      -- fg = spec.text.lighten(10),
      -- fg = spec.lnr,
      -- bg = 'none',
      -- gui = 'bold',
      link = 'CurrentMode',
    },
    --
    -- ModeMsg
    ModeMsg { fg = p.turquoise },
    MsgArea { fg = p.turquoise },
    MoreMsg { fg = p.turquoise },
    --
    -- Popup
    Pmenu { bg = spec.bg2, fg = spec.text },
    PmenuSel { bg = p.turquoise, fg = p.raisin_black },
    PmenuSbar { bg = p.cool_gray, fg = p.cool_gray.readable() },
    PmenuThumb { bg = p.turquoise, fg = p.raisin_black },
    --
    -- Search
    IncSearch { fg = p.raisin_black, bg = p.turquoise },
    Search { fg = p.raisin_black, bg = p.turquoise },
    Substitute { fg = p.raisin_black, bg = p.turquoise },
    MatchParen { bg = p.uranian_blue, fg = p.raisin_black },
    --
    -- Color column
    ColorColumn { bg = p.dark_blue.lighten(10) },
    ScrollBar { bg = p.dark_blue.desaturate(5).lighten(5) },
    -- Diagnostic
    DiagnosticError { fg = p.persian_red.lighten(15).saturate(20), sp = p.persian_red.lighten(15).saturate(20) },
    DiagnosticWarn { fg = p.lemon_chiffon.darken(10).saturate(10), sp = p.lemon_chiffon.darken(10).saturate(10) },
    DiagnosticInfo { fg = p.sapphire, sp = p.flamingo },
    DiagnosticHint { fg = p.sky, sp = p.sky },
    DiagnosticUnderlineError { sp = p.persian_red.lighten(15).saturate(20), underline = true },
    DiagnosticUnderlineWarn { sp = p.lemon_chiffon.darken(10).saturate(10), underline = true },
    DiagnosticUnderlineInfo { sp = p.sapphire, underline = true },
    DiagnosticUnderlineHint { sp = p.sky, underline = true },
    -- DiagnosticVirtualTextError { }
    -- DiagnosticVirtualTextWarn  { }
    -- DiagnosticVirtualTextInfo  { }
    -- DiagnosticVirtualTextHint  { }
    -- DiagnosticFloatingError    { }
    -- DiagnosticFloatingWarn     { }
    -- DiagnosticFloatingInfo     { }
    -- DiagnosticFloatingHint     { }
    -- DiagnosticSignError        { }
    -- DiagnosticSignWarn         { }
    -- DiagnosticSignInfo         { }
    -- DiagnosticSignHint         { }
    --
    -- Tabline
    TabLine { bg = p.gunmetal, fg = p.cool_gray, bold = true },
    TabLineSel { bg = p.turquoise, fg = p.raisin_black, bold = true },
    TabLineFill { bg = 'none' },
    TabLineWarn { bg = p.gunmetal, fg = DiagnosticWarn.fg },
    TabLineError { bg = p.gunmetal, fg = DiagnosticError.fg },
    TabLineInfo { bg = p.gunmetal, fg = DiagnosticInfo.fg },
    CursorLine { bg = spec.bg2.saturate(10).darken(5) },
    CursorColumn { bg = spec.bg2 },
    --
    --Statusline
    StatusLine { bg = spec.bg },
    StatusLineNC { bg = spec.bg.lighten(1) },
    --
    -- Spell
    SpecialKey { fg = p.red },
    SpellBad { fg = p.red },
    SpellCap { fg = p.lemon_chiffon },
    SpellLocal { fg = p.turquoise },
    SpellRare { fg = p.pale_azure },
    --
    -- Title
    Title { fg = p.turquoise },
    --
    -- LSP
    LSPInlayHint { bg = 'none', fg = p.cool_gray },
    --
    -- Syntax
    Comment { fg = p.uranian_blue.darken(20).desaturate(45) },
    --
    Constant { fg = p.tea_rose },
    String { fg = p.flamingo },
    Character { fg = p.pale_azure },
    Number { fg = p.maroon },
    Boolean { fg = p.maroon },
    Float { fg = p.maroon },
    --
    Identifier { fg = spec.ident },
    Function { fg = p.pale_azure.darken(15) },
    --
    Statement { fg = spec.kw },
    Conditional { fg = spec.kw },
    Repeat { fg = spec.kw },
    Label { fg = spec.kw },
    Exception { fg = spec.kw },
    Operator { fg = p.cadet_gray.lighten(35) },
    Keyword { fg = spec.kw },
    StorageClass { fg = spec.kw },
    --
    Macro { fg = p.red },
    PreProc { Macro },
    Include { Macro },
    Define { Macro },
    --
    Type { fg = p.lemon_chiffon },
    Structure { fg = p.lemon_chiffon },
    Typedef { fg = p.lemon_chiffon },

    --
    Special { fg = p.lavender.darken(5) },
    SpecialChar { fg = p.lavender.darken(5) },
    Tag { fg = spec.kw.lighten(40) },
    Delimiter { fg = p.cadet_gray.lighten(30) },
    SpecialComment { fg = p.lavender },
    Debug { fg = p.red },
    --
    Error { bg = 'none', fg = p.persian_red.lighten(10) },
    Todo { fg = p.lemon_chiffon, bg = 'none' },
    --
    -- LSP
    LspReferenceRead { bg = p.dark_blue.lighten(5) },
    LspReferenceWrite { bg = p.dark_blue.lighten(5) },
    LspCodeLens { bg = 'none', fg = p.text },
    LspCodeLensSeparator { bg = 'none', fg = p.cadet_gray },
    LspSignatureActiveParameter { bg = 'none', fg = p.turquoise },
    --

    --
    -- Treesitter
    sym '@text.literal' {},
    sym '@string.special' { fg = p.lavender.darken(5) },
    sym '@string.escape' { fg = p.lavender.darken(5) },
    sym '@text.title' { fg = p.turquoise }, -- Title
    sym '@text.reference' { fg = spec.ident }, -- Identifier
    sym '@constant.macro' { Macro }, -- Define
    sym '@define' { Macro }, -- Define
    sym '@include' { Macro }, -- Include
    sym '@preproc' { Macro }, -- PreProc
    sym '@function.macro' { Macro }, -- Macro
    sym '@punctuation' { fg = p.cadet_gray.lighten(30) }, -- Delimiter
    sym '@function' { fg = Function.fg }, -- Function
    sym '@method' { fg = p.pale_azure.mix(Function.fg, 50) }, -- Function
    sym '@namespace' { fg = p.pale_azure }, -- Identifier
    sym '@structure' { fg = p.pale_azure }, -- Structure
    sym '@parameter' { fg = spec.ident.lighten(10) }, -- Identifier
    sym '@field' { Identifier }, -- Identifier
    sym '@property' { fg = spec.ident.darken(12) }, -- Identifier
    sym '@variable' { Identifier }, -- Identifier
    sym '@macro' { Macro }, -- Macro
    sym '@string' { String }, -- String
    sym '@character' { Character }, -- Character
    sym '@character.special' { SpecialChar }, -- SpecialChar
    sym '@number' { Number }, -- Number
    sym '@boolean' { Boolean }, -- Boolean
    sym '@float' { Float }, -- Float

    sym '@keyword' { Keyword }, -- Keyword
    -- Rust
    sym '@lsp.type.formatSpecifier' { SpecialChar },
    sym '@lsp.type.escapeSequence' { SpecialChar },
    sym '@lsp.type.selfKeyword' { fg = p.blue },
    sym '@lsp.type.selfTypeKeyword' { Keyword },

    -- sym '@lsp.type.trait' { fg = p.peach },
    sym '@lsp.type.typeParameter' { fg = p.lemon_chiffon },

    sym '@lsp.type.macro' { Macro },
    sym '@lsp.type.attribute' { Macro },
    sym '@lsp.type.keyword' { Keyword },
    sym '@lsp.type.variable' { Identifier },

    -- symbols
    sym '@lsp.type.punctuation' { Delimiter },
    sym '@lsp.type.macroBang' { Operator },

    -- operators                                    .
    sym '@lsp.type.operator' { Operator },
    sym '@lsp.type.property' { fg = p.red.lighten(40) },
    sym '@lsp.type.enumMember' { fg = p.mauve },
    sym '@lsp.type.typeAlias' { fg = p.lemon_chiffon },
    sym '@lsp.type.union' { fg = p.lemon_chiffon },

    sym '@lsp.type.builtinAttribute' { Macro },

    sym '@lsp.mod.keyword' { Keyword },
    sym '@lsp.mod.async' { Keyword },
    sym '@lsp.mod.callable' { Function },
    -- sym '@lsp.mod.trait' { Keyword },
    sym '@lsp.typemod.variable.static' { fg = p.tea_rose },

    sym '@text.uri' { Underlined }, -- Underlined
    sym '@text.underline' { Underlined }, -- Underlined
    sym '@text.todo' { Todo }, -- Todo
    -- sym('@comment')           { }, -- Comment
    sym '@constant.builtin' { fg = p.tea_rose }, -- Special
    -- sym '@storageclass' { fg = p.tea_rose }, -- StorageClass
    -- sym('@function.builtin')  { }, -- Special
    -- sym('@constructor')       { }, -- Special
    -- sym('@conditional')       { }, -- Conditional
    -- sym('@repeat')            { }, -- Repeat
    -- sym '@label' { Keyword }, -- Label
    -- sym('@operator')          { }, -- Operator
    -- sym('@exception')         { }, -- Exception
    -- sym '@type' { fg = p.cool_gray }, -- Type
    -- sym('@debug')             { }, -- Debug
    -- sym('@tag')               { }, -- Tag
    ReachBorder { bg = NormalFloat.bg, fg = Title.fg },
    ReachDirectory { bg = NormalFloat.bg, fg = Directory.fg },
    ReachModifiedIndicator { bg = NormalFloat.bg, fg = String.fg },
    ReachHandleBuffer { bg = NormalFloat.bg, fg = String.fg },
    ReachHandleDelete { bg = NormalFloat.bg, fg = Error.fg },
    ReachHandleSplit { bg = NormalFloat.bg, fg = Directory.fg },
    ReachTail { bg = NormalFloat.bg, fg = Normal.fg },
    ReachHandleMarkLocal { bg = NormalFloat.bg, fg = Type.fg },
    ReachHandleMarkGlobal { bg = NormalFloat.bg, fg = Number.fg },
    ReachMark { bg = NormalFloat.bg, fg = Normal.fg },
    ReachMarkLocation { bg = NormalFloat.bg, fg = Comment.fg },
    ReachHandleTabpage { bg = NormalFloat.bg, fg = TabLineSel.fg },
    ReachGreyOut { bg = NormalFloat.bg, fg = Comment.fg },
    ReachMatchExact { bg = NormalFloat.bg, fg = String.fg },
    ReachPriority { bg = NormalFloat.bg, fg = Special.fg },
    ReachCurrent { bg = NormalFloat.bg, fg = Title.fg },
  }
end)

local fidget = lush(function()
  return {
    FidgetTask { fg = p.text, bg = 'none' },
    FidgetTitle { fg = p.blue, bg = 'none' },
  }
end)

local aerial = lush(function()
  return {
    AerialLine { fg = p.lemon_chiffon, bg = 'none' },
    AerialGuide { fg = p.colombia_blue },
    AerialBooleanIcon { base.Boolean },
    AerialClassIcon { base.Type },
    AerialConstantIcon { base.Constant },
    AerialConstructorIcon { base.Function },
    AerialFieldIcon { base.Identifier },
    AerialFunctionIcon { base.Function },
    AerialMethodIcon { base.Function },
    AerialNamespaceIcon { fg = p.pale_azure },
    AerialNumberIcon { base.Number },
    AerialOperatorIcon { base.Operator },
    AerialTypeParameterIcon { base.Identifier },
    AerialPropertyIcon { base.Identifier },
    AerialStringIcon { base.String },
    AerialVariableIcon { base.Identifier },
    AerialEnumMemberIcon { base.Identifier },
    AerialEnumIcon { base.Type },
    AerialFileIcon { base.Identifier },
    AerialModuleIcon { base.Identifier },
    AerialPackageIcon { base.Identifier },
    AerialInterfaceIcon { base.Type },
    AerialStructIcon { base.Type },
    AerialEventIcon { base.Type },
    AerialArrayIcon { base.Constant },
    AerialObjectIcon { base.Type },
    AerialKeyIcon { base.Identifier },
    AerialNullIcon { base.Constant },
  }
end)

local harpoon = lush(function()
  return {
    HarpoonWindow { fg = p.blue, bg = spec.bg.darken(10) },
    HarpoonBorder { fg = p.blue, bg = spec.bg.darken(10) },
  }
end)

local cmp = lush(function()
  return {
    Pmenu { bg = spec.bg.darken(10) },
    PmenuSel { bg = p.turquoise, fg = p.raisin_black },
    CmpItemAbbrDeprecated { gui = 'strikethrough' },
    CmpItemKind { fg = p.blue },
    CmpItemMenu { fg = 'NONE' },
    CmpItemAbbrMatch { fg = p.text, gui = 'bold' },
    CmpItemAbbrMatchFuzzy { fg = p.text, gui = 'bold' },
    -- kind support
    CmpItemKindSnippet { fg = p.mauve },
    CmpItemKindKeyword { fg = p.red },
    CmpItemKindText { fg = p.teal },
    CmpItemKindMethod { fg = p.blue },
    CmpItemKindConstructor { fg = p.blue },
    CmpItemKindFunction { fg = p.blue },
    CmpItemKindFolder { fg = p.blue },
    CmpItemKindModule { fg = p.blue },
    CmpItemKindConstant { fg = p.peach },
    CmpItemKindField { fg = p.lemon_chiffon },
    CmpItemKindProperty { fg = p.lemon_chiffon },
    CmpItemKindEnum { fg = p.lemon_chiffon },
    CmpItemKindUnit { fg = p.lemon_chiffon },
    CmpItemKindClass { fg = p.yellow },
    CmpItemKindVariable { fg = p.flamingo },
    CmpItemKindFile { fg = p.blue },
    CmpItemKindInterface { fg = p.lemon_chiffon },
    CmpItemKindColor { fg = p.red },
    CmpItemKindReference { fg = p.red },
    CmpItemKindEnumMember { fg = p.red },
    CmpItemKindStruct { fg = p.blue },
    CmpItemKindValue { fg = p.peach },
    CmpItemKindEvent { fg = p.blue },
    CmpItemKindOperator { fg = p.blue },
    CmpItemKindTypeParameter { fg = p.blue },
    CmpItemKindCopilot { fg = p.turquoise },
  }
end)

local gitsigns = lush(function()
  return {
    GitSignsAdd { fg = p.turquoise },
    GitSignsChange { fg = p.lemon_chiffon },
    GitSignsDelete { fg = p.red },
    GitSignsAddPreview { fg = p.turquoise },
    GitSignsChangePreview { fg = p.lemon_chiffon },
  }
end)

local trouble = lush(function()
  return {
    -- TroubleText { fg = p.blue },
    -- TroubleCount { fg = p.text },
    TroubleNormal { bg = spec.bg },
  }
end)

local noice = lush(function()
  return {
    NoiceCmdline { fg = p.text, bg = spec.bg },
    NoiceCmdlineIcon { fg = p.blue },
    NoiceCmdlineIconSearch { fg = p.lemon_chiffon },
    NoiceCmdlinePopupBorder { fg = spec.bg, bg = spec.bg.darken(10) },
    NoiceCmdlinePopupBorderSearch { fg = p.lemon_chiffon },
    NoiceConfirmBorder { fg = p.blue },
  }
end)

local notify = lush(function()
  return {
    NotifyERRORBorder { fg = p.red },
    NotifyERRORIcon { fg = p.red },
    NotifyERRORTitle { fg = p.red, gui = 'italic' },
    NotifyWARNBorder { fg = p.yellow },
    NotifyWARNIcon { fg = p.yellow },
    NotifyWARNTitle { fg = p.yellow, gui = 'italic' },
    NotifyINFOBorder { fg = p.blue },
    NotifyINFOIcon { fg = p.blue },
    NotifyINFOTitle { fg = p.blue, gui = 'italic' },
    NotifyDEBUGBorder { fg = p.peach },
    NotifyDEBUGIcon { fg = p.peach },
    NotifyDEBUGTitle { fg = p.peach, gui = 'italic' },
    NotifyTRACEBorder { fg = p.rosewater },
    NotifyTRACEIcon { fg = p.rosewater },
    NotifyTRACETitle { fg = p.rosewater, gui = 'italic' },
  }
end)

local mason = lush(function()
  return {
    MasonHeader { fg = p.turquoise, bg = spec.bg, bold = true },
    MasonHeaderSecondary { fg = p.pale_azure, bg = spec.bg2, bold = true },
    MasonHighlight { fg = p.green },
    MasonHighlightBlock {
      bg = spec.bg,
      fg = p.pale_azure,
    },
    MasonHighlightBlockBold { bg = spec.bg2, fg = p.pale_azure, bold = true },
    MasonHighlightSecondary { fg = p.mauve },
    MasonHighlightBlockSecondary { fg = p.pale_azure, bg = spec.bg2 },
    MasonHighlightBlockBoldSecondary { fg = p.turquoise, bg = spec.bg, bold = true },
    MasonMuted { fg = p.blue },
    MasonMutedBlock { bg = spec.bg, fg = p.colombian_blue },
    MasonMutedBlockBold { bg = p.lemon_chiffon, fg = p.lemon_chiffon.readable(), bold = true },
    MasonError { fg = p.red },
    MasonHeading { fg = p.lavender, bold = true },
  }
end)

local telescope = lush(function()
  return {
    TelescopeSelectionCaret {
      fg = p.flamingo,
      bg = spec.bg2,
    },
    TelescopeSelection {
      fg = p.flamingo,
      bg = spec.bg2,
    },
    TelescopeMatching { fg = p.blue },
    TelescopeNormal { bg = spec.bg.darken(10) },
    TelescopeBorder { bg = spec.bg.darken(10), fg = p.blue },
  }
end)

local whichkey = lush(function()
  return {
    WhichKey { fg = p.flamingo, bg = spec.bg.darken(10) },
    WhichKeySeparator { fg = p.uranian_blue.darken(20).desaturate(45), bg = spec.bg.darken(10) },
    WhichKeyValue { fg = p.uranian_blue.darken(20).desaturate(45), bg = spec.bg.darken(10) },
    WhichKeyGroup { fg = p.blue, bg = spec.bg.darken(10) },
    WhichKeyDesc { fg = p.pink, bg = spec.bg.darken(10) },
    WhichKeyBorder { fg = p.blue, bg = spec.bg.darken(10) },
    WhichKeyFloat { fg = spec.text, bg = spec.bg.darken(10) },
  }
end)

local mini = lush(function()
  return {
    Cursorword { italic = true },
    CursorwordCurrent {},
    MiniJump2dSpot { gui = 'underline bold' },
    MiniIndentscopeSymbol { fg = p.pale_azure.darken(15), gui = 'bold', bold = true },
    MiniIndentscopePrefix { gui = 'bold' },
    IndentScope { fg = '#363655', bg = 'NONE' },
    MiniTrailspace { bg = p.red },
    IndentBlanklineChar { fg = '#363655', bg = 'NONE' },
  }
end)

local glance = lush(function()
  local glance_list_bg = p.dark_blue.darken(5).desaturate(10)
  local glance_preview_bg = p.dark_blue.lighten(2).desaturate(10)
  local glance_winbar_bg = p.dark_blue.darken(5).desaturate(10)
  return {
    GlanceListBorderBottom { fg = p.blue, bg = p.none },
    GlancePreviewBorderBottom { fg = p.blue, bg = p.none },
    GlanceFoldIcon { fg = p.cool_gray },
    GlanceIndent { fg = p.cool_gray },
    GlanceListEndOfBuffer { fg = p.blue, bg = glance_list_bg },
    GlanceListNormal { bg = glance_list_bg },
    GlanceListCursorLine { bg = glance_preview_bg },
    GlanceListFilename { fg = p.blue, bg = glance_list_bg },
    GlanceListFilepath { fg = p.blue, bg = glance_list_bg },
    GlanceListMatch { fg = p.blue },
    GlancePreviewNormal { fg = p.text, bg = glance_preview_bg },
    GlancePreviewMatch { fg = p.blue, bg = glance_preview_bg },
    GlancePreviewLineNr { fg = p.purple_gray, bg = glance_preview_bg },
    GlancePreviewCursorLine { bg = glance_preview_bg },
    GlancePreviewSignColumn { fg = p.blue, bg = glance_preview_bg },
    GlancePreviewEndOfBuffer { fg = p.blue, bg = glance_preview_bg },
    GlanceWinBarFilename { fg = p.blue, bg = glance_winbar_bg },
    GlanceWinBarFilepath { fg = p.blue, bg = glance_winbar_bg },
    GlanceWinBarTitle { fg = p.blue, bg = glance_winbar_bg },
    GlanceBorderTop { fg = p.blue, bg = glance_winbar_bg },
  }
end)

local toggleterm = lush(function()
  return {
    ToggleTermName { fg = p.cool_gray, bg = 'none' },
  }
end)

local lazy = lush(function()
  return {
    LazyNormal { bg = 'none' },
  }
end)

local edgy = lush(function()
  return {
    EdgyTitle = { fg = spec.bg.lighten(10) },
  }
end)

-- Comment { fg = p.uranian_blue.darken(20).desaturate(45) },
-- --
-- Constant { fg = p.tea_rose },
local leap = lush(function()
  return {
    LeapMatch { fg = p.tea_rose },
    LeapLabelPrimary { fg = p.tea_rose },
    LeapLabelSecondary { fg = p.red },
    LeapLabelSelected { fg = p.blue },
    LeapBackdrop { fg = p.uranian_blue.darken(20).desaturate(45) },
  }
end)

local dropbar = lush(function()
  return {
    WinBar { fg = spec.text.darken(10) },
    WinBarNC { base.NormalNC },
    DropBar { fg = p.blue },
    DropBarIconUISeparator { fg = p.blue },
    DropBarMenuCurrentContext { fg = p.blue, bg = p.dark_blue.lighten(5) },
    -- DropBarMenuScrollBar { fg = p.blue, bg = p.dark_blue.lighten(5) },
    -- DropBarMenuSbar { fg = p.blue, bg = p.dark_blue.lighten(5) },
    DropBarMenuSbar { bg = spec.bg.darken(15), fg = spec.text },
    DropBarMenuThumb { fg = p.blue, bg = p.dark_blue.lighten(5) },
    -- DropBarMenuSbar { fg = p.blue, bg = p.dark_blue.lighten(5) },
  }
end)

local theme = lush.merge {
  lazy,
  base,
  fidget,
  aerial,
  cmp,
  gitsigns,
  trouble,
  harpoon,
  noice,
  notify,
  mason,
  telescope,
  whichkey,
  mini,
  glance,
  toggleterm,
  leap,
  dropbar,
  edgy,
}

return theme
