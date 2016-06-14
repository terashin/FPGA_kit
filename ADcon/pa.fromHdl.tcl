
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ADcon -dir "C:/Users/Kishine/Documents/kenkyu/workspace/ADcon/planAhead_run_2" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ADcon.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ADcon.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ADcon $srcset
add_files [list {ADcon.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
