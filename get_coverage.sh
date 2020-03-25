#!/bin/bash
python -c "\nimport json\n\nf = open('coverage.json', 'r')\ndistros_dict = json.load(f)\nf.close()\nprint(distros_dict['totals']['percent_covered'])\n"