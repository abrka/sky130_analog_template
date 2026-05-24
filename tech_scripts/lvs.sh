#!/bin/bash

netgen-lvs -batch lvs "layout/$1.spice $1" "schematic/simulation/$1.spice $1" "$PDK_ROOT/sky130A/libs.tech/netgen/sky130A_setup.tcl"