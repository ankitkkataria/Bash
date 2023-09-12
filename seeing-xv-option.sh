#!/bin/bash -xv
# -x = Prints commands as they execute after substitutions(Like variables replaced by their values) and expansions(Like wildcards being expanded.)
# Usally called an x-trace, tracing, or print debugging.

#path/to/interpretor -x (If you do this your entire code's output will be shown not just a portion.)
# set -x to start debugging a portion of the code.
# set +x to stop debugging a portion of the code.

TEST_VAR="test"
echo "$TEST_VAR"

# Reverse KT Task: Write a bashscript which is started at the bootup once network is available, and test it in the SOLIDRUN