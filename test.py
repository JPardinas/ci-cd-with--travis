import json

f = open('coverage.json', 'r')
distros_dict = json.load(f)
f.close()
print(distros_dict['totals']['percent_covered'])