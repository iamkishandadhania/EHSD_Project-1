#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/kida925e/Final_submission/Conv_opt_HLS/solution1/.autopilot/db/a.g.bc ${1+"$@"}
