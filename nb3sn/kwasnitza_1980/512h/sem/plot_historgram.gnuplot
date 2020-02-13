set terminal pngcairo size 647,540 enhanced font 'Helvetica,16' linewidth 2

set output "pixel_intensity_hist.png"

set datafile separator comma

set xlabel "Pixel Intensity"
set ylabel "Counts"

set mxtics 5
set mytics 5

plot "pixel_intensity_hist.csv" title "extracted" with points,\
"curve_1_fit.dat" title "curve 1" with lines lw 2,\
"curve_2_fit.dat" title "curve 2" with lines lw 2,\
"curve_total_fit.dat" title "over-all fit" with lines lw 2,\
