#!/bin/bash

# copies the scripts root directory to variable so
# relative paths can be used without interference from
# using commands like 'cd'
#

root_dir=$(cd $(dirname $0); pwd)
