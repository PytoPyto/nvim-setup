nnoremap  <silent> sf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> gg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> bb <cmd>Telescope buffers<cr>
nnoremap <silent> nf <cmd>tabnew<cr>
nnoremap <silent> H gT<cr>
nnoremap <silent> L gt<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap gp :silent %!prettier --stdin-filepath %<CR>
nnoremap <silent> ff :CocCommand prettier.formatFile<CR>
nnoremap <silent> tt :NERDTree <cr>

