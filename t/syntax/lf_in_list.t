#!/usr/bin/pugs

use v6;
use Test;

plan 3;

our %foo;
my %e = ("foo", "bar", "blah", "blah");

%foo = (
        "foo", "bar",
        "blah", "blah",
);

is(+%foo, +%e, "oh boy, it evaluates correctly, too");
is(%foo<foo>, %e<foo>, "...");
is(%foo<blah>, %e<blah>, "...");

