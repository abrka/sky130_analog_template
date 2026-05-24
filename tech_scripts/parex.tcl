proc parex {} {
  # 1. Get the name of your currently active open cell
  set active_cell [cellname list window]

  # 2. Create a flattened copy to prevent "Bad Device Location" resistance errors
  flatten "${active_cell}_parex"
  load "${active_cell}_parex"
  select top cell

  # 3. Configure extraction settings for capacitance
  extract do local
  extract all

  # 4. Process layout data into simulator format
  ext2sim labels on
  ext2sim

  # 5. Extract detailed parasitic resistance networks
  extresist tolerance 10
  extresist

  # 6. Generate the final SPICE netlist with full RC parasitics
  ext2spice lvs
  ext2spice cthresh 0
  ext2spice rthresh 0
  ext2spice extresist on
  ext2spice -o ${active_cell}_parex.spice

  load ${active_cell}
  cellname delete "${active_cell}_parex"

  # 7. Print confirmation to the console
  puts " Parasitic extraction complete! Output file: ${active_cell}_parex.spice"
}