v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 170 240 170 {
lab=vout}
N 190 80 190 100 {
lab=VDD}
N 130 130 150 130 {
lab=vin}
N 190 160 190 180 {
lab=vout}
N 190 240 190 260 {
lab=GND}
N 130 210 150 210 {
lab=vbias}
N 190 210 210 210 {
lab=GND}
N 190 130 210 130 {
lab=GND}
N 190 250 210 250 {
lab=GND}
N 210 210 210 250 {
lab=GND}
N 210 130 210 210 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 170 130 0 0 {name=M1
L=0.15
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 170 210 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 190 260 3 0 {name=p1 lab=GND}
C {devices/ipin.sym} 130 130 0 0 {name=p2 lab=vin}
C {devices/ipin.sym} 130 210 0 0 {name=p3 lab=vbias}
C {devices/ipin.sym} 190 80 1 0 {name=p4 lab=VDD}
C {devices/opin.sym} 240 170 0 0 {name=p5 lab=vout}
C {devices/code.sym} 310 110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
