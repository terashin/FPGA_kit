
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name and -dir "C:/Users/teramoto_2/Documents/works/FPGA/project/and/planAhead_run_3" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "AND.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {and.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top AND $srcset
add_files [list {AND.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
