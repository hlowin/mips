onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /substractor/a
add wave -noupdate /substractor/b
add wave -noupdate /substractor/y
add wave -noupdate /substractor/N
add wave -noupdate /substractor/a
add wave -noupdate /substractor/b
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1266 ps} 0}
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
WaveRestoreZoom {1178 ps} {1304 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 10000000 -range 7 0 -starttime 0ps -endtime 1000ps sim:/substractor/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/substractor/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
