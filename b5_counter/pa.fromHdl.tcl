
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name b5_counter -dir "C:/Users/teramoto_2/Documents/works/FPGA/project/b5_counter/planAhead_run_1" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "b5_counter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {b5_counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top b5_counter $srcset
add_files [list {b5_counter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
