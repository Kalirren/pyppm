v 20110115 2
C 40000 40000 0 0 0 title-B.sym
T 50000 40700 14 18 1 0 0 0 1
SCB | Digital-to-Analog Converter
T 50000 40400 14 10 1 0 0 0 1
06-dac.sch
T 50100 40100 14 14 1 0 0 0 1
6
T 51600 40100 14 14 1 0 0 0 1
10
T 54000 40100 14 10 1 0 0 0 1
Bradley Worley
T 54000 40400 14 10 1 0 0 0 1
1.2
C 50900 43000 1 0 0 ad5328_core-1.sym
{
T 51300 47100 5 10 0 0 0 0 1
device=AD5328
T 52900 46800 5 10 1 1 180 8 1
refdes=U07
T 51300 47300 5 10 0 0 0 0 1
footprint=TSSOP16
}
N 52400 46800 52400 49100 4
N 52400 43000 52400 42600 4
C 53200 48600 1 270 0 capacitor-2.sym
{
T 53900 48400 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 53700 48200 5 10 1 1 0 0 1
refdes=C21
T 54100 48400 5 10 0 0 270 0 1
symversion=0.1
T 53700 48000 5 10 1 1 0 0 1
value=10u
T 53200 48600 5 10 0 0 0 0 1
footprint=SMD_POLAR 120 60
}
C 55100 47700 1 90 0 capacitor-1.sym
{
T 54400 47900 5 10 0 0 90 0 1
device=CAPACITOR
T 55200 48200 5 10 1 1 0 0 1
refdes=C22
T 54200 47900 5 10 0 0 90 0 1
symversion=0.1
T 55200 48000 5 10 1 1 0 0 1
value=100n
T 55100 47700 5 10 0 0 0 0 1
footprint=SMD_SIMPLE 80 50
}
N 53400 48900 53400 48600 4
N 54900 48900 54900 48600 4
N 52400 48900 54900 48900 4
N 54900 47700 54900 47300 4
N 54900 47500 53400 47500 4
N 53400 47500 53400 47700 4
N 53900 44000 54100 44000 4
N 54100 42800 54100 45800 4
N 53900 45800 54100 45800 4
N 52400 42800 54100 42800 4
N 47100 46800 50700 46800 4
N 47100 45400 50900 45400 4
C 52300 42300 1 0 0 gnd-1.sym
C 54800 47000 1 0 0 gnd-1.sym
N 52400 42800 50700 42800 4
N 50700 42800 50700 44000 4
N 50700 44000 50900 44000 4
C 44100 46900 1 180 0 resistor-1.sym
{
T 43800 46500 5 10 0 0 180 0 1
device=RESISTOR
T 43400 47000 5 10 1 1 0 0 1
refdes=R10
T 43400 46500 5 10 1 1 0 0 1
value=330
T 44100 46900 5 10 0 0 90 0 1
footprint=SMD_SIMPLE 80 50
}
C 44100 45600 1 180 0 resistor-1.sym
{
T 43800 45200 5 10 0 0 180 0 1
device=RESISTOR
T 43400 45700 5 10 1 1 0 0 1
refdes=R11
T 43400 45200 5 10 1 1 0 0 1
value=330
T 44100 45600 5 10 0 0 90 0 1
footprint=SMD_SIMPLE 80 50
}
C 44100 44300 1 180 0 resistor-1.sym
{
T 43800 43900 5 10 0 0 180 0 1
device=RESISTOR
T 43400 44400 5 10 1 1 0 0 1
refdes=R12
T 43400 43900 5 10 1 1 0 0 1
value=330
T 44100 44300 5 10 0 0 90 0 1
footprint=SMD_SIMPLE 80 50
}
C 41600 45400 1 0 0 input-2.sym
{
T 41600 45600 5 10 0 0 0 0 1
net=DAC_SDATA:1
T 42200 46100 5 10 0 0 0 0 1
device=none
T 42100 45500 5 10 1 1 0 7 1
value=DAC_SDATA
}
C 41600 46700 1 0 0 input-2.sym
{
T 41600 46900 5 10 0 0 0 0 1
net=DAC_SCLK:1
T 42200 47400 5 10 0 0 0 0 1
device=none
T 42100 46800 5 10 1 1 0 7 1
value=DAC_SCLK
}
C 41600 44100 1 0 0 input-2.sym
{
T 41600 44300 5 10 0 0 0 0 1
net=DAC_SYNC:1
T 42200 44800 5 10 0 0 0 0 1
device=none
T 42100 44200 5 10 1 1 0 7 1
value=DAC_SYNC
}
N 43000 46800 43200 46800 4
N 43000 45500 43200 45500 4
N 43000 44200 43200 44200 4
C 44500 43100 1 0 0 acsl-6300-1.sym
{
T 45600 46100 5 10 1 1 0 0 1
device=ACSL6300
T 44800 47800 5 10 0 0 0 0 1
footprint=SO16
T 45600 46300 5 10 1 1 0 0 1
refdes=U06
}
N 44500 46800 44100 46800 4
N 44500 45500 44100 45500 4
N 44500 44200 44100 44200 4
N 45600 43300 45600 42900 4
N 45600 43100 46000 43100 4
N 46000 43100 46000 43300 4
C 44200 43400 1 0 0 gnd-earth-1.sym
C 44200 44700 1 0 0 gnd-earth-1.sym
C 44200 46000 1 0 0 gnd-earth-1.sym
N 44500 46500 44300 46500 4
N 44300 46500 44300 46300 4
N 44500 45200 44300 45200 4
N 44300 45200 44300 45000 4
N 44500 43900 44300 43900 4
N 44300 43900 44300 43700 4
C 42500 49600 1 270 0 capacitor-2.sym
{
T 43200 49400 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 43000 49200 5 10 1 1 0 0 1
refdes=C19
T 43400 49400 5 10 0 0 270 0 1
symversion=0.1
T 43000 49000 5 10 1 1 0 0 1
value=10u
T 42500 49600 5 10 0 0 0 0 1
footprint=SMD_POLAR 120 60
}
C 44400 48700 1 90 0 capacitor-1.sym
{
T 43700 48900 5 10 0 0 90 0 1
device=CAPACITOR
T 44500 49200 5 10 1 1 0 0 1
refdes=C20
T 43500 48900 5 10 0 0 90 0 1
symversion=0.1
T 44500 49000 5 10 1 1 0 0 1
value=100n
T 44400 48700 5 10 0 0 0 0 1
footprint=SMD_SIMPLE 80 50
}
N 42700 49900 42700 49600 4
N 44200 49900 44200 49600 4
N 44200 48700 44200 48300 4
N 44200 48500 42700 48500 4
N 42700 48500 42700 48700 4
C 44100 48000 1 0 0 gnd-1.sym
N 45600 47400 45600 49900 4
N 45600 47600 46000 47600 4
N 46000 47400 46000 48300 4
N 50500 44400 50900 44400 4
N 50900 45800 50700 45800 4
N 50700 45800 50700 46800 4
C 45500 42600 1 0 0 gnd-1.sym
C 45800 48300 1 0 0 5V-plus-1.sym
C 47700 47000 1 90 0 resistor-1.sym
{
T 47300 47300 5 10 0 0 90 0 1
device=RESISTOR
T 47800 47500 5 10 1 1 0 0 1
refdes=R13
T 47800 47300 5 10 1 1 0 0 1
value=10k
T 47700 47000 5 10 0 1 0 0 1
footprint=SMD_SIMPLE 80 50
}
C 48500 45600 1 90 0 resistor-1.sym
{
T 48100 45900 5 10 0 0 90 0 1
device=RESISTOR
T 48600 46100 5 10 1 1 0 0 1
refdes=R14
T 48600 45900 5 10 1 1 0 0 1
value=10k
T 48500 45600 5 10 0 1 0 0 1
footprint=SMD_SIMPLE 80 50
}
N 47600 47900 47600 48100 4
N 46000 48100 49200 48100 4
N 47600 47000 47600 46800 4
N 48400 48100 48400 46500 4
C 52200 49100 1 0 0 5V-plus-1.sym
N 42700 49900 45600 49900 4
C 49300 44100 1 90 0 resistor-1.sym
{
T 48900 44400 5 10 0 0 90 0 1
device=RESISTOR
T 49400 44600 5 10 1 1 0 0 1
refdes=R15
T 49400 44400 5 10 1 1 0 0 1
value=10k
T 49300 44100 5 10 0 1 0 0 1
footprint=SMD_SIMPLE 80 50
}
N 47100 43900 50500 43900 4
N 50500 43900 50500 44400 4
N 49200 48100 49200 45000 4
N 49200 44100 49200 43900 4
N 48400 45600 48400 45400 4