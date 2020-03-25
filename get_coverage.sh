#!/bin/bash
python -c "\nimport json\n\nwith open('coverage.json', 'r') as f:\n    distros_dict = json.load(f)\n    f.close()\n    print(distros_dict['totals']['percent_covered'])\n"