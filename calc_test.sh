chrt --fifo 1 ./calc.rb > timing/calc_normal_fifo_1.txt
chrt --fifo 50 ./calc.rb > timing/calc_normal_fifo_50.txt
chrt --fifo 99 ./calc.rb > timing/calc_normal_fifo_99.txt


chrt --rr 1 ./calc.rb > timing/calc_normal_rr_1.txt
chrt --rr 50 ./calc.rb > timing/calc_normal_rr_50.txt
chrt --rr 99 ./calc.rb > timing/calc_normal_rr_99.txt
