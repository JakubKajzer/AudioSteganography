restart
force -freeze sim:/top/clk 1 0, 0 {10 ps} -r 20
force -freeze sim:/top/reset 0 0
run 
force -freeze sim:/top/reset 1 0
run 
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000

force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000

force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 0 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000
force -freeze sim:/top/rx 1 0
run  8000