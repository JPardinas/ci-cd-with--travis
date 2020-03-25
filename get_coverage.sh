#!/bin/bash
output=$(
python - <<EOF
import json;
with open('coverage.json', 'r') as f:
    distros_dict = json.load(f)
    f.close()
    print(distros_dict['totals']['percent_covered'])
EOF
)
echo $output