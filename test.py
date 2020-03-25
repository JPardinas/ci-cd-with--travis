import os, json, subprocess

with open('coverage.json', 'r') as f:
    distros_dict = json.load(f)
    f.close()
    os.environ["jaja"] = distros_dict['totals']['percent_covered']
    print(distros_dict['totals']['percent_covered'])

subprocess.check_call(["jaja=\"hola2\""])