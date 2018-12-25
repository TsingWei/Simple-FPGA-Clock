



#set_property PACKAGE_PIN E13 [get_ports {seg_out[0]}]
#set_property PACKAGE_PIN C15 [get_ports {seg_out[1]}]
#set_property PACKAGE_PIN C14 [get_ports {seg_out[2]}]
#set_property PACKAGE_PIN E17 [get_ports {seg_out[3]}]

#set_property PACKAGE_PIN F16 [get_ports {seg_out[4]}]
#set_property PACKAGE_PIN F14 [get_ports {seg_out[5]}]
#set_property PACKAGE_PIN F13 [get_ports {seg_out[6]}]
#set_property PACKAGE_PIN F15 [get_ports {seg_out[7]}]













#set_property MARK_DEBUG true [get_nets {row_IBUF[0]}]
#set_property MARK_DEBUG true [get_nets {row_IBUF[1]}]
#set_property MARK_DEBUG true [get_nets {row_IBUF[2]}]
#set_property MARK_DEBUG true [get_nets {row_IBUF[3]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[0]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[1]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[2]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[3]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[4]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[5]}]
#set_property MARK_DEBUG true [get_nets {seg_out_OBUF[6]}]
#set_property MARK_DEBUG false [get_nets <const1>]
#set_property MARK_DEBUG true [get_nets {col_OBUF[3]}]
#set_property MARK_DEBUG true [get_nets {col_OBUF[2]}]
#set_property MARK_DEBUG true [get_nets {col_OBUF[0]}]
#set_property MARK_DEBUG true [get_nets {col_OBUF[1]}]
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 4 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {col_OBUF[0]} {col_OBUF[1]} {col_OBUF[2]} {col_OBUF[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 4 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list {row_IBUF[0]} {row_IBUF[1]} {row_IBUF[2]} {row_IBUF[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
#set_property port_width 7 [get_debug_ports u_ila_0/probe2]
#connect_debug_port u_ila_0/probe2 [get_nets [list {seg_out_OBUF[0]} {seg_out_OBUF[1]} {seg_out_OBUF[2]} {seg_out_OBUF[3]} {seg_out_OBUF[4]} {seg_out_OBUF[5]} {seg_out_OBUF[6]}]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]

set_property IOSTANDARD LVCMOS33 [get_ports {h[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property PACKAGE_PIN Y9 [get_ports {a[3]}]
set_property PACKAGE_PIN W9 [get_ports {a[2]}]
set_property PACKAGE_PIN Y8 [get_ports {a[0]}]
set_property PACKAGE_PIN Y7 [get_ports {a[1]}]
set_property PACKAGE_PIN AB8 [get_ports {b[3]}]
set_property PACKAGE_PIN AA8 [get_ports {b[2]}]
set_property PACKAGE_PIN V8 [get_ports {b[1]}]
set_property PACKAGE_PIN V9 [get_ports {b[0]}]





set_property IOSTANDARD LVCMOS33 [get_ports buzz_out]
set_property IOSTANDARD LVCMOS33 [get_ports en]
set_property PACKAGE_PIN Y9 [get_ports en]
set_property PACKAGE_PIN A19 [get_ports buzz_out]

set_property IOSTANDARD LVCMOS33 [get_ports led1]
set_property IOSTANDARD LVCMOS33 [get_ports led2]
set_property PACKAGE_PIN K17 [get_ports led1]
set_property PACKAGE_PIN L13 [get_ports led2]

set_property IOSTANDARD LVCMOS33 [get_ports {set_en[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {set_en[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {set_en[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {set_en[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {set_en[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {set_en[5]}]
set_property PACKAGE_PIN W9 [get_ports set_en]

set_property PACKAGE_PIN Y9 [get_ports {set_en[5]}]
set_property PACKAGE_PIN W9 [get_ports {set_en[4]}]
set_property PACKAGE_PIN Y7 [get_ports {set_en[3]}]
set_property PACKAGE_PIN Y8 [get_ports {set_en[2]}]
set_property PACKAGE_PIN AB8 [get_ports {set_en[1]}]
set_property PACKAGE_PIN AA8 [get_ports {set_en[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN K17 [get_ports {led[3]}]
set_property PACKAGE_PIN L13 [get_ports {led[2]}]
set_property PACKAGE_PIN M13 [get_ports {led[1]}]
set_property PACKAGE_PIN K14 [get_ports {led[0]}]

