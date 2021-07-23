set terminal pngcairo size 647,540 enhanced font 'Helvetica-normal,16' linewidth 2
#set terminal pdfcairo  enhanced font "Helvetica-normal,2" fontscale 1.0 size 1.078 in, 0.9 in lw .6 ps .1


set output "pixel_intensity_histogram.png"

set datafile separator comma

set xlabel "Pixel Intensity"
set ylabel "Counts"

set xtics 0,100,270
set mxtics 4
set tic scale 1.3

set mytics 4

set key autotitle columnhead


plot "pixel_intensity_hist.csv" title "extracted" with points pt 7,\
"curve_1_fit.dat" title "disordered" with lines lw 2,\
"curve_2_fit.dat" title "ordered" with lines lw 2,\
"curve_total_fit.dat" title "over-all fit" with lines lw 2,\
