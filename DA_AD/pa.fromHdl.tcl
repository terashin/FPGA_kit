
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DA_AD -dir "C:/Users/Kishine/Documents/kenkyu/workspace/DA_AD/planAhead_run_1" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "DA_AD.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DA_AD.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top DA_AD $srcset
add_files [list {DA_AD.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
