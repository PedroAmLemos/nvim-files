--Tiny icons
require('lspkind').init({
    with_text = true,
    symbol_map = {
    Text = '',
    Method = 'ƒ',
    Function = '',
    Constructor = '',
    Variable = '',
    Class = '',
    Interface = 'ﰮ',
    Module = '',
    Property = '',
    Unit = '',
    Value = '',
    Enum = '了',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = ''
    },
})

require'lspconfig'.pyls.setup{}
--require'lspconfig'.clangd.setup{}
require'lspconfig'.ccls.setup{}
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.tsserver.setup {
}
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
