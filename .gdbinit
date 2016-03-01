set disassembly-flavor intel
set print asm-demangle on
set follow-fork-mode child
set history filename ~/.gdb_history
set history save on
set print array on
set print array-indexes on

define dps
  init-if-undefined $_=$sp
  if $argc == 0
    printf "%p\n", $_
    p {void *}$_@16
    set $_=$+16
  end
  if $argc == 1
    printf "%p\n", $arg0
    p {void *}$arg0@16
    set $_=$+16
  end
  if $argc >= 2
    printf "%p\n", $arg0
    p {void *}$arg0@$arg1
    set $_=$+$arg1
  end
end

define nc
  disable display
  nexti
  info registers rax
  while {char}$pc != '\xe8' && {char}$pc != '\xc3'
    nexti
  end
  enable display
  display
end

display/i $pc
