#!/usr/bin/gnuplot

set terminal png
set output "network.png"
set title "network"
set xlabel "time"
set ylabel "size(k)"
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%H:%M"
plot "stat.dat" using 1:11 title "send" with lines, \
"stat.dat" using 1:12 title "recv" with lines
