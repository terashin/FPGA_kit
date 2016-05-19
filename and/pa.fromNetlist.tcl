
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name and -dir "C:/Users/teramoto_2/Documents/works/FPGA/project/and/planAhead_run_1" -part xc3s700afg400-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/teramoto_2/Documents/works/FPGA/project/and/AND.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/teramoto_2/Documents/works/FPGA/project/and} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "AND.ucf" [current_fileset -constrset]
add_files [list {AND.ucf}] -fileset [get_property constrset [current_run]]
link_design
