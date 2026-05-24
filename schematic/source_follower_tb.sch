v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 630 120 630 130 {
lab=vin_tb}
N 180 200 190 200 {
lab=vin_tb}
N 430 210 440 210 {
lab=vout_tb}
N 80 110 80 120 {
lab=VDD}
N 80 180 80 190 {
lab=#net1}
N 120 220 190 220 {
lab=#net1}
N 80 250 80 260 {
lab=GND}
N 540 190 540 200 {
lab=GND}
N 630 190 630 200 {
lab=GND}
N 540 120 540 130 {
lab=VDD}
N 340 150 340 160 {
lab=VDD}
N 340 260 340 270 {
lab=GND}
N 80 190 110 190 {
lab=#net1}
N 110 190 120 190 {
lab=#net1}
N 130 190 130 220 {
lab=#net1}
N 120 190 130 190 {
lab=#net1}
C {source_follower.sym} 340 210 0 0 {name=x1}
C {devices/vdd.sym} 340 150 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 340 270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 540 160 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 630 160 0 0 {name=VIN value="DC 0.9 AC 1" savecurrent=false}
C {devices/gnd.sym} 540 200 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 630 200 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 540 120 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 630 120 0 0 {name=p1 sig_type=std_logic lab=vin_tb}
C {devices/lab_pin.sym} 180 200 0 0 {name=p2 sig_type=std_logic lab=vin_tb}
C {devices/lab_pin.sym} 440 210 2 0 {name=p3 sig_type=std_logic lab=vout_tb}
C {sky130_fd_pr/nfet_01v8.sym} 100 220 2 0 {name=M1
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
C {devices/isource.sym} 80 150 0 0 {name=I0 value=10u}
C {devices/vdd.sym} 80 110 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 80 260 0 0 {name=l7 lab=GND}
C {devices/code.sym} 740 100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
