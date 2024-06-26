# ----------------------------------------------------------------------------
#     _____
#    /     \
#   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET Design Resource Center
#      \======/         www.em.avnet.com/drc
#       \====/    
# ----------------------------------------------------------------------------
# 
#  Created With Avnet UCF Generator V0.4.0 
#     Date: Saturday, June 30, 2012 
#     Time: 12:18:55 AM 
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#  
#  Please direct any questions to:
#     ZedBoard.org Community Forums
#     http://www.zedboard.org
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2012 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------
# 
#  Notes:
# 
#  10 August 2012
#     IO standards based upon Bank 34 and Bank 35 Vcco supply options of 1.8V, 
#     2.5V, or 3.3V are possible based upon the Vadj jumper (J18) settings.  
#     By default, Vadj is expected to be set to 1.8V but if a different 
#     voltage is used for a particular design, then the corresponding IO 
#     standard within this UCF should also be updated to reflect the actual 
#     Vadj jumper selection.
# 
#  09 September 2012
#     Net names are not allowed to contain hyphen characters '-' since this
#     is not a legal VHDL87 or Verilog character within an identifier.  
#     HDL net names are adjusted to contain no hyphen characters '-' but 
#     rather use underscore '_' characters.  Comment net name with the hyphen 
#     characters will remain in place since these are intended to match the 
#     schematic net names in order to better enable schematic search.
#
#  17 April 2014
#     Pin constraint for toggle switch SW7 was corrected to M15 location.
#
#  16 April 2015
#     Corrected the way that entire banks are assigned to a particular IO
#     standard so that it works with more recent versions of Vivado Design
#     Suite and moved the IO standard constraints to the end of the file 
#     along with some better organization and notes like we do with our SOMs.
#
#   6 June 2016
#     Corrected error in signal name for package pin N19 (FMC Expansion Connector)
#	
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk_100MHz_0}];  # "GCLK"

# ----------------------------------------------------------------------------
# JA Pmod - Bank 13 
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y11  [get_ports {data_io_0}];  # "JA1"
#set_property PACKAGE_PIN AA11 [get_ports {io_pin1_0}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {data_holt[2]}];  # "JA3"
#set_property PACKAGE_PIN AA9  [get_ports {data_holt[3]}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {data_holt[4]}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {data_holt[5]}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {data_holt[6]}];  # "JA9"
#set_property PACKAGE_PIN AA8  [get_ports {data_holt[7]}];  # "JA10"


# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W12 [get_ports {data_holt[8]}];  # "JB1"
#set_property PACKAGE_PIN W11 [get_ports {data_holt[9]}];  # "JB2"
#set_property PACKAGE_PIN V10 [get_ports {data_holt[10]}];  # "JB3"
#set_property PACKAGE_PIN W8  [get_ports {data_holt[11]}];  # "JB4"
#set_property PACKAGE_PIN V12 [get_ports {data_holt[12]}];  # "JB7"
#set_property PACKAGE_PIN W10 [get_ports {data_holt[13]}];  # "JB8"
#set_property PACKAGE_PIN V9  [get_ports {data_holt[14]}];  # "JB9"
#set_property PACKAGE_PIN V8  [get_ports {data_holt[15]}];  # "JB10"

# ----------------------------------------------------------------------------
# JC Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN AB7 [get_ports {rcvA_holt}];  # "JC1_P"
#set_property PACKAGE_PIN AB6 [get_ports {rcvB_holt}];  # "JC1_N"
#set_property PACKAGE_PIN Y4  [get_ports {regEnable_holt}];  # "JC2_P"
#set_property PACKAGE_PIN AA4 [get_ports {read_nWrite_holt}];  # "JC2_N"
#set_property PACKAGE_PIN R6  [get_ports {strobe_holt}];  # "JC3_P"
#set_property PACKAGE_PIN T6  [get_ports {sync_holt}];  # "JC3_N"
#set_property PACKAGE_PIN T4  [get_ports {nchAchB_holt}];  # "JC4_P"
#set_property PACKAGE_PIN U4  [get_ports {encodingErr_holt}];  # "JC4_N"

# ----------------------------------------------------------------------------
# JD Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN V7 [get_ports {mr_holt}];  # "JD1_P"
#set_property PACKAGE_PIN W7  [get_ports {JD1_N}];  # "JD1_N"
#set_property PACKAGE_PIN V5 [get_ports {JD2_P}];  # "JD2_P"
#set_property PACKAGE_PIN V4 [get_ports {JD2_N}];  # "JD2_N"
#set_property PACKAGE_PIN W6 [get_ports {JD3_P}];  # "JD3_P"
#set_property PACKAGE_PIN W5 [get_ports {JD3_N}];  # "JD3_N"
#set_property PACKAGE_PIN U6 [get_ports {JD4_P}];  # "JD4_P"
#set_property PACKAGE_PIN U5 [get_ports {JD4_N}];  # "JD4_N"

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {leds1_0}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {leds1_0}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {LED_8[2]}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {LED_8[3]}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {LED_8[4]}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {LED_8[5]}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {LED_8[6]}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {LED_8[7]}];  # "LD7"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {BTNL}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

# ----------------------------------------------------------------------------
# USB OTG Reset - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN L16 [get_ports {OTG_VBUSOC}];  # "OTG-VBUSOC"

# ----------------------------------------------------------------------------
# XADC GIO - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN H15 [get_ports {XADC_GIO0}];  # "XADC-GIO0"
#set_property PACKAGE_PIN R15 [get_ports {XADC_GIO1}];  # "XADC-GIO1"
#set_property PACKAGE_PIN K15 [get_ports {XADC_GIO2}];  # "XADC-GIO2"
#set_property PACKAGE_PIN J15 [get_ports {XADC_GIO3}];  # "XADC-GIO3"

# ----------------------------------------------------------------------------
# Miscellaneous - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN K16 [get_ports {PUDC_B}];  # "PUDC_B"

## ----------------------------------------------------------------------------
## USB OTG Reset - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN G17 [get_ports {OTG_RESETN}];  # "OTG-RESETN"

## ----------------------------------------------------------------------------
## User DIP Switches - Bank 35
## ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN F22 [get_ports {orA1_0}];  # "SW0"
set_property PACKAGE_PIN G22 [get_ports {orB1_0]}];  # "SW1"
#set_property PACKAGE_PIN H22 [get_ports {orA1_0}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {orB1_0}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {dir}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {dir1}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {direction_0}];  # "SW6"
set_property PACKAGE_PIN M15 [get_ports {direction1_ext_0}];  # "SW7"

# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];