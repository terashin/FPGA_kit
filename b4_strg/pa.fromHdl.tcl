
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name b4_strg -dir "C:/Users/teramoto_2/Documents/works/FPGA/project/b4_strg/planAhead_run_3" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "b4_strg.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {b4_strg.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top b4_strg $srcset
add_files [list {b4_strg.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
