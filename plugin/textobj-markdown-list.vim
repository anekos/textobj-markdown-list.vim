onoremap <silent> il <Cmd>call <SID>markdown_list()<CR>
vnoremap <silent> il <Cmd>call <SID>markdown_list()<CR>

function! s:markdown_list()
  let l:buf_num = bufnr('%')
  let [l:start, l:end] = [v:null, v:null]

  for l:lnum in range(line('.'), 1, -1)
    let l:line = getline(l:lnum)
    if l:line =~ '^- '
      let l:start = l:lnum
      break
    endif
  endfor

  for l:lnum in range(line('.') + 1, line('$'), 1)
    let l:line = getline(l:lnum)
    if l:line !~ '^  *-'
      let l:end = l:lnum - 1
      break
    endif
  endfor

  if l:start is v:null
    return
  endif

  if l:end is v:null
    let l:end = line('$')
  endif

  call setpos("'<", [l:buf_num, l:start, 1, 0])
  call setpos("'>", [l:buf_num, l:end, len(getline(l:end)), 0])

  normal! gv
endfunction

finish

- foo
  - hoge 1
  - hoge 2
  - hoge 3
- bar
  - cat
  - nyan
- oneline
