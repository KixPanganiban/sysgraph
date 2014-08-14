#/bin/sh
# Run via cron every 30 mins

echo 'Generating dat files.'

# Collect that data via Dstat
# output to file dstat.dat
dstat -tmcn 60 30 > dstat.dat

# Clean dstat.dat by removing first two lines
# and output to stat.dat
grep -Ev 'time|date|system' dstat.dat > stat.dat

echo 'Generating png files.'

# Run the scripts to generate PNG files
# via GNUplot.
./cpu.sh
./memory.sh
./network.sh
