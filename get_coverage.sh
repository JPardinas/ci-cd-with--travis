#!/bin/bash
python3 -c "import sys, json; print(json.load(sys.stdin)['totals']['percent_covered'])"
instance_id = python3 -c "import sys, json; print(json.load(sys.stdin)['totals']['percent_covered'])"
echo $instance_id