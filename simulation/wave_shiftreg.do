onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shiftreg/clk
add wave -noupdate /shiftreg/reset
add wave -noupdate /shiftreg/load
add wave -noupdate /shiftreg/sin
add wave -noupdate /shiftreg/d
add wave -noupdate /shiftreg/clk
add wave -noupdate /shiftreg/reset
add wave -noupdate /shiftreg/load
add wave -noupdate /shiftreg/sin
add wave -noupdate /shiftreg/d
add wave -noupdate /shiftreg/q
add wave -noupdate /shiftreg/sout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {59 ps} 0}
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
WaveRestoreZoom {0 ps} {394 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ps -endtime 1000ps sim:/shiftreg/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/shiftreg/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/shiftreg/load 
wave create -driver freeze -pattern constant -value 00010001 -starttime 0ps -endtime 1000ps sim:/shiftreg/sin 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/shiftreg/sin 
wave create -driver freeze -pattern constant -value 00110011 -range 7 0 -starttime 0ps -endtime 1000ps sim:/shiftreg/d 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
