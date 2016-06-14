
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ADDA -dir "C:/Users/Kishine/Documents/kenkyu/workspace/ADDA/planAhead_run_1" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ADDA.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ADDA.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ADDA $srcset
add_files [list {ADDA.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
