#!/usr/bin/pugs

use v6;
require Test;

=pod

Multi-Dimensional Arrays

=cut

plan 25;

# multi-dimensional array

my $multi1 = [1, ['foo', 'bar', 'baz'], 5];

todo_is(+$multi1, 3, 'the multi1 has 3 elements');
is($multi1[0], 1, 'got the right value at multi1 index 0');

todo_is(+$multi1[1], 3, 'multi1[1] has 3 elements');

# multi-dimensional array slices

todo_is(eval '$multi1[1;0]', 'foo', 'got the right value at multi1 index 1,0');
todo_is(eval '$multi1[1;1]', 'bar', 'got the right value at multi1 index 1,1');
todo_is(eval '$multi1[1;2]', 'baz', 'got the right value at multi1 index 1,2');

# and the normal syntax

#todo_is(eval '$multi1[1][0]', 'foo', 'got the right value at multi1 index 1,0');
todo_fail('got the right value at multi1 index 1,0');
todo_is(eval '$multi1[1][1]', 'bar', 'got the right value at multi1 index 1,1');
todo_is(eval '$multi1[1][2]', 'baz', 'got the right value at multi1 index 1,2');

todo_is($multi1[2], 5, 'got the right value at multi1 index 2');

# multi-dimensional array constructed from 2 array refs

my $array_ref1 = (1, 2, 3);
my $array_ref2 = [4, 5, 6];

my $multi2 = [ $array_ref1, $array_ref2 ];

todo_is(+$multi2, 2, 'the multi2 has 2 elements');

todo_is(+$multi2[0], 3, 'multi2[0] has 3 elements');

# slice

#todo_is(eval '$multi2[0;0]', 1, 'got the right value at multi2 index 0,0');
todo_fail('got the right value at multi2 index 0,0');
todo_is(eval '$multi2[0;1]', 2, 'got the right value at multi2 index 0,1');
todo_is(eval '$multi2[0;2]', 3, 'got the right value at multi2 index 0,2');

# normal 

#todo_is(eval '$multi2[0][0]', 1, 'got the right value at multi2 index 0,0');
todo_fail('got the right value at multi2 index 0,0');
todo_is(eval '$multi2[0][1]', 2, 'got the right value at multi2 index 0,1');
todo_is(eval '$multi2[0][2]', 3, 'got the right value at multi2 index 0,2');

todo_is(+$multi2[1], 3, 'multi2[1] has 3 elements');

# slice 

todo_is(eval '$multi2[1;0]', 4, 'got the right value at multi2 index 1,0');
todo_is(eval '$multi2[1;1]', 5, 'got the right value at multi2 index 1,1');
todo_is(eval '$multi2[1;2]', 6, 'got the right value at multi2 index 1,2');

# normal

todo_is(eval '$multi2[1][0]', 4, 'got the right value at multi2 index 1,0');
todo_is(eval '$multi2[1][1]', 5, 'got the right value at multi2 index 1,1');
todo_is(eval '$multi2[1][2]', 6, 'got the right value at multi2 index 1,2');
