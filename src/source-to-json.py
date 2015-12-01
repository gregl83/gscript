#!/usr/bin/python
#
# Get file source and convert to json

import sys;
import json;

# get file path
file_path = sys.argv[1];

# get source from file path
try:
    file_handler = open(file_path, "r");
    source = file_handler.read()
except:
    sys.exit("could not open %") % file_path;

# wrap source in array for json parser
array = [source];

# output encoded json
print json.dumps(array, separators=(',',':'));