#!/usr/bin/python3

# 2020
# The AellyX Toolkit was programmed and developed by anonAELLY.
# The AellyX Toolkit is published under the MIT Licence.
# The AellyX Toolkit is based on the CLIF-Framework.
# The CLIF-Framework is programmed and developed by anonAELLY.
# The CLIF-Framework is published under the MIT Licence.

# This script is a shortcut for everyone who does not want to install AellyX to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./AellyX/")
main = import_module("AellyX.main")

main.run()
