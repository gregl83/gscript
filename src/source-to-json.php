<?php

/**
 * Get file source and convert to json
 */

# get file path
$file_path = $argv[1];

# get source from file path
$source = file_get_contents($file_path) or die("could not open $file_path");

# wrap source in array for json parser
$array = array($source);

# output encoded json
print json_encode($array, JSON_UNESCAPED_SLASHES);