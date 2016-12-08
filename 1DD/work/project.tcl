set projDir "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/planAhead"
set projName "1DD"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/mojo_top_0.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/edge_detector_1.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/button_conditioner_2.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/reset_conditioner_17.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/multi_seven_seg_18.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/pipeline_19.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/counter_27.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/seven_seg_28.v" "H:/sophomore/Computation Structures/50.002-1d-group18/1DD/work/verilog/decoder_29.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "H:/sophomore/Computation\ Structures/50.002-1d-group18/1DD/constraint/extra.ucf" "D:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "D:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
