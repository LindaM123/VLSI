v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 620 -280 660 -280 { lab=vout}
N 660 -280 660 -240 { lab=vout}
N 660 -180 660 -140 { lab=GND}
N 400 -280 480 -280 { lab=vin}
N 500 -520 500 -480 { lab=vdd}
N 600 -520 600 -480 { lab=vss}
N 540 -340 540 -320 { lab=vdd}
N 540 -240 540 -220 { lab=vss}
C {inv1.sym} 540 -290 0 0 {name=x1}
C {devices/capa.sym} 660 -210 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 660 -140 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 400 -250 0 0 {name=V1 value="PULSE(0 1.8 2n 10p 10p 2n 4n)"}
C {devices/vsource.sym} 500 -450 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 600 -450 0 0 {name=V3 value=0}
C {devices/gnd.sym} 500 -420 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 600 -420 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 500 -520 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 600 -520 0 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 540 -340 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 540 -220 0 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 400 -220 0 0 {name=l8 lab=GND}
C {devices/code.sym} 760 -450 0 0 {name=spice1 only_toplevel=false value="

.lib ~/tecnicas_digitales_programas/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
set color0 = rgb:f/f/e
tran 0.01ns 5n
plot vin vout
.endc

.save all

"}
C {devices/lab_pin.sym} 400 -280 0 0 {name=l9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 660 -240 0 0 {name=l10 sig_type=std_logic lab=vout}
