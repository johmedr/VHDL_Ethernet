
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name TP_Ethernet_2 -dir "/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/planAhead_run_2" -part xc6slx16csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/Core.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2} }
set_property target_constrs_file "Core.ucf" [current_fileset -constrset]
add_files [list {Core.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/Core.ncd"
if {[catch {read_twx -name results_1 -file "/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/Core.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/medrano/Bureau/4AE/VHDL/TP_Ethernet_2/Core.twx\": $eInfo"
}
