- [enclustra/Mercury_XU5_PE1_Reference_Design](https://github.com/enclustra/Mercury_XU5_PE1_Reference_Design.git)
  - tag `2020.1_v10.0`


- Edit `Mercury_XU5_PE1_Reference_Design/reference_design/scripts/settings.tcl`

```diff
# Modify this variable to select your module
-- if {![info exists module_name]} {set module_name ME-XU5-2CG-1E-D10H}
++ if {![info exists module_name]} {set module_name ME-XU5-5EV-2I-D12E}
if {![info exists baseboard]}   {set baseboard PE1}
```

- (007/525) Register 0x0016: 0x02 written
- (008/525) Register 0x0017: 0xDC written
- (009/525) Register 0x0018: 0xD5 written
- (010/525) Register 0x0019: 0xDD written