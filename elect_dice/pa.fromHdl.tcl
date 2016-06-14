
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name elect_dice -dir "C:/Users/teramoto_2/Documents/works/FPGA/project/elect_dice/planAhead_run_3" -part xc3s700afg400-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "elect_dice.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {elect_dice.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top elect_dice $srcset
add_files [list {elect_dice.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg400-4
