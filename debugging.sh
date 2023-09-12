#!/bin/bash -x
# -x = Prints commands as they execute after substitutions(Like variables replaced by their values) and expansions(Like wildcards being expanded.)
# Usally called an x-trace, tracing, or print debugging.

#path/to/interpretor -x (If you do this your entire code's output will be shown not just a portion.)
# set -x to start debugging a portion of the code.
# set +x to stop debugging a portion of the code.

TEST_VAR="test"
echo "$TEST_VAR"

# + in front of an output represents it due to the commands.
# Along with -x you could also write -e or you could just write -xe or -ex what adding e does is it just makes you halt the script execution as soon as the error is encountered.
# -v is wen u want to see what you wrote in the script.
# Usually it's wrote with -x.
