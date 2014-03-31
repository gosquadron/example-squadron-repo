#!/usr/bin/env python

import json
import sys
import subprocess
import os

input_json = ' '.join(sys.stdin.readlines())

config = json.loads(input_json)

runsh = os.path.join(config['dir'], 'run.sh')

subprocess.check_call(runsh)

