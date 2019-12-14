onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top/clk
add wave -noupdate /top/reset
add wave -noupdate /top/rx
add wave -noupdate /top/tx
add wave -noupdate /top/U1/sig_state
add wave -noupdate /top/U1/tx_data
add wave -noupdate /top/U1/rx_data
add wave -noupdate /top/U1/state_of_rx_busy
add wave -noupdate /top/U1/rx_busy
add wave -noupdate /top/U2/os_pulse
add wave -noupdate /top/U1/secret
add wave -noupdate /top/U1/output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29612598 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 117
configure wave -valuecolwidth 76
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
configure wave -timelineunits ns
update
WaveRestoreZoom {20017764 ps} {30525381 ps}
