- [enclustra/Mercury_XU5_PE1_Reference_Design](https://github.com/enclustra/Mercury_XU5_PE1_Reference_Design.git)
  - tag `2020.1_v1.1.0`


- Edit `Mercury_XU5_PE1_Reference_Design/reference_design/scripts/settings.tcl`

```diff
# Modify this variable to select your module
-- if {![info exists module_name]} {set module_name ME-XU5-2CG-1E-D10H}
++ if {![info exists module_name]} {set module_name ME-XU5-5EV-2I-D12E}
if {![info exists baseboard]}   {set baseboard PE1}
```