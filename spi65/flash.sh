#!/bin/bash
openocd -f openocd/stm32f4eval.cfg \
-c "init; targets; reset init; wait_halt; poll; flash write_image erase unlock build/gd6502.elf; reset run; shutdown"