use v6;

# Checking that testing is sane: if

# L<S04/Conditional statements>

say '1..2';

my $x = '0';

if ($x eq $x) { say 'ok 1' } else { say 'not ok 1' }
if ($x ne $x) { say 'not ok 2' } else { say 'ok 2' }
