#!/bin/bash

# sources revision to identify a running open MPI
# - git commit hash
# - hash of git diff, to indicated uncommited changes

echo "$(git rev-parse --short HEAD 2>/dev/null) $([[ $(git diff 2>/dev/null) != "" ]] && echo -n +uncommited: && git diff | md5sum | cut -b -7)"
