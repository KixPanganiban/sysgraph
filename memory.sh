#!/usr/bin/gnuplot

set terminal png
set output "memory.png"
set title "memory usage"
set xlabel "time"
set ylabel "size(MB)"
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%H:%M"
plot "stat.dat" using 1:8 title "used" with lines, \
"stat.dat" using 1:9 title "buff" with lines, \
"stat.dat" using 1:10 title "cach" with lines, \
"stat.dat" using 1:11 title "free" with lines
