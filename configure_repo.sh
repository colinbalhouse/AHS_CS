#!/bin/sh
set -eu
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 GITHUB_OWNER REPOSITORY_NAME" >&2
  exit 1
fi
OWNER=$1
REPO=$2
python3 - "$OWNER" "$REPO" <<'PY'
from pathlib import Path
import sys
owner, repo = sys.argv[1], sys.argv[2]
p = Path('skillmap.md')
s = p.read_text(encoding='utf-8')
s = s.replace('REPLACE_OWNER', owner).replace('REPLACE_REPO', repo)
p.write_text(s, encoding='utf-8')
print(f'Configured skillmap.md for {owner}/{repo}')
PY
