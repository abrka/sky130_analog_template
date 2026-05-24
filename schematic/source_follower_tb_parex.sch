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
N 190 450 200 450 {
lab=vin_tb}
N 440 460 450 460 {
lab=vout_tb_parex}
N 90 360 90 370 {
lab=VDD}
N 90 430 90 440 {
lab=#net2}
N 130 470 200 470 {
lab=#net2}
N 90 500 90 510 {
lab=GND}
N 350 400 350 410 {
lab=VDD}
N 350 510 350 520 {
lab=GND}
N 90 440 120 440 {
lab=#net2}
N 120 440 130 440 {
lab=#net2}
N 140 440 140 470 {
lab=#net2}
N 130 440 140 440 {
lab=#net2}
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
C {devices/vdd.sym} 350 400 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 350 520 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 190 450 0 0 {name=p4 sig_type=std_logic lab=vin_tb}
C {devices/lab_pin.sym} 450 460 2 0 {name=p5 sig_type=std_logic lab=vout_tb_parex}
C {sky130_fd_pr/nfet_01v8.sym} 110 470 2 0 {name=M2
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
C {devices/isource.sym} 90 400 0 0 {name=I1 value=10u}
C {devices/vdd.sym} 90 360 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 90 510 0 0 {name=l11 lab=GND}
C {source_follower_parex.sym} 350 460 0 0 {name=x2}
C {devices/code_shown.sym} 750 300 0 0 {name=s1 only_toplevel=false value="
.include ../../layout/source_follower_parex.spice
"}
