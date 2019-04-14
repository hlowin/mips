onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /comparator/a
add wave -noupdate /comparator/b
add wave -noupdate /comparator/a
add wave -noupdate /comparator/b
add wave -noupdate /comparator/eq
add wave -noupdate /comparator/neq
add wave -noupdate /comparator/lt
add wave -noupdate /comparator/lte
add wave -noupdate /comparator/gt
add wave -noupdate /comparator/gte
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2482 ps} 0}
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
WaveRestoreZoom {2468 ps} {2622 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00001000 -range 7 0 -starttime 0ps -endtime 1000ps sim:/comparator/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps sim:/comparator/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
