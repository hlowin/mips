onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /counter/clk
add wave -noupdate /counter/reset
add wave -noupdate /counter/clk
add wave -noupdate /counter/reset
add wave -noupdate /counter/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {664 ps} 0}
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
WaveRestoreZoom {324 ps} {1404 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/counter/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/counter/reset 
wave modify -driver freeze -pattern random -initialvalue 0 -period 200ps -random_type Uniform -seed 5 -starttime 0ps -endtime 1000ps Edit:/counter/reset 
WaveCollapseAll -1
wave clipboard restore
