packloadall

" ======================== SET DEFAULTS
"
:set ic "ignore case when searching with / in a file
:set nowritebackup "i don't want the cruft laying around
:set nobackup " and no means no
:set noeb "no error belll, but to hell with it, we'll override it by setting it on next
:set vb "visual bell

" ======================== PLUG
"
"https://thevaluable.dev/vim-php-ide/
"https://github.com/prettier/vim-prettier
call plug#begin()
Plug 'prettier/vim-prettier', {  'do': 'yarn install --frozen-lockfile --production',  'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'php', 'js'] }
call plug#end()
