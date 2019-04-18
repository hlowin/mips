onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ram/clk
add wave -noupdate /ram/we
add wave -noupdate /ram/adr
add wave -noupdate /ram/din
add wave -noupdate /ram/clk
add wave -noupdate /ram/we
add wave -noupdate /ram/adr
add wave -noupdate /ram/din
add wave -noupdate /ram/dout
add wave -noupdate -expand /ram/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {483 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/ram/clk 
wave create -driver freeze -pattern repeater -initialvalue 111000 -period 200ps -sequence { 000111  } -repeat forever -range 5 0 -starttime 0ps -endtime 1000ps sim:/ram/adr 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 11111111111111111111111111111111 -period 200ps -sequence { 00000000000000000000000000000000  } -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps sim:/ram/din 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 150ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/ram/we 
wave modify -driver freeze -pattern repeater -initialvalue 00000000000000000000000000000000 -period 200ps -sequence { 00000000000000000000000000000000 11111111111111111111111111111111  } -repeat forever -range 31 0 -starttime 0ps -endtime 1000ps Edit:/ram/din 
WaveCollapseAll -1
wave clipboard restore
