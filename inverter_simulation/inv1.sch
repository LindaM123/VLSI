v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 660 -670 680 -670 { lab=in}
N 660 -750 660 -670 { lab=in}
N 660 -750 680 -750 { lab=in}
N 640 -710 660 -710 { lab=in}
N 720 -720 720 -700 { lab=out}
N 720 -710 820 -710 { lab=out}
N 720 -800 720 -780 { lab=Vdd!}
N 700 -800 720 -800 { lab=Vdd!}
N 700 -800 740 -800 { lab=Vdd!}
N 720 -670 830 -670 { lab=Vss!}
N 720 -640 720 -620 { lab=Vss!}
N 700 -620 720 -620 { lab=Vss!}
N 700 -620 740 -620 { lab=Vss!}
N 830 -670 830 -630 { lab=Vss!}
N 720 -630 830 -630 { lab=Vss!}
N 670 -750 680 -750 { lab=in}
N 720 -790 720 -780 { lab=Vdd!}
N 720 -720 720 -710 { lab=out}
N 720 -750 820 -750 { lab=Vdd!}
N 820 -790 820 -750 { lab=Vdd!}
N 720 -790 820 -790 { lab=Vdd!}
C {sky130_fd_pr/nfet_01v8.sym} 700 -670 0 0 {name=M1
L=0.15
W=0.65
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 720 -800 0 0 {name=p1 lab=Vdd!}
C {devices/iopin.sym} 720 -620 0 0 {name=p2 lab=Vss!}
C {devices/ipin.sym} 650 -710 0 0 {name=p3 lab=in
}
C {devices/opin.sym} 800 -710 0 0 {name=p4 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 700 -750 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
