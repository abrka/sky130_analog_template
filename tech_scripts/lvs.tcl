proc lvs {} {
  set active_cell [cellname list window]
  extract all 
  ext2spice lvs
  ext2spice
  puts "LVS extraction complete! Output file: ${active_cell}.spice"
}