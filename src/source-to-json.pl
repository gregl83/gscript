#!/usr/bin/perl
#
# Get file source and convert to json

use strict;
use warnings FATAL => 'all';
use JSON;

# get file path
my $file_path = $ARGV[0];

# get source from file path
my $source = do {
    local $/ = undef;
    open my $fh, "<", $file_path or die "could not open $file_path: $!";
    <$fh>;
};

# wrap source in array for json parser
my $array;
@$array = ($source);

# output encoded json
print encode_json($array);