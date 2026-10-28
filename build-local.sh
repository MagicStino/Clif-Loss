#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
[ "$#" = 1 ] || { echo "Usage: sh build-local.sh /path/to/genLoss1.1.0.bin"; exit 2; }
python3 - "$ROOT" "$1" <<'PY'
from pathlib import Path
import hashlib,subprocess,sys,tempfile,zipfile
root=Path(sys.argv[1]);firmware=Path(sys.argv[2]).resolve()
if hashlib.sha256(firmware.read_bytes()).hexdigest()!='f9bfb4bfb28c551c1390a6ff1fc5c26873f5e3381ace65b7b363bd22e86cba67':raise SystemExit('Wrong firmware: exact genLoss1.1.0.bin required')
builds=root/'.clif-build';builds.mkdir(exist_ok=True)
target=Path(tempfile.mkdtemp(prefix='personal-',dir=builds))
with zipfile.ZipFile(root/'Clif-Loss-source.zip') as archive:
 for name in archive.namelist():
  if Path(name).is_absolute() or '..' in Path(name).parts:raise SystemExit('Invalid archive path')
 archive.extractall(target)
subprocess.run([sys.executable,str(target/'Clif-Loss/tools/build_local.py'),str(firmware),str(root/'personal-builds')],check=True)
PY
