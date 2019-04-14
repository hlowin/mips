onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multiplier/a
add wave -noupdate /multiplier/b
add wave -noupdate /multiplier/a
add wave -noupdate /multiplier/b
add wave -noupdate /multiplier/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {172 ps} 0}
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
WaveRestoreZoom {0 ps} {206 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplier/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplier/b 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps Edit:/multiplier/a 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps Edit:/multiplier/b 
WaveCollapseAll -1
wave clipboard restore
