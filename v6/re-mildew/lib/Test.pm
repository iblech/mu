my $test_count = 0;
role HACK {
    method EXPORTALL($scope) {
        $scope.{'&ok'} := &ok;
        $scope.{'&plan'} := &plan;
    }
}
role Test {
}
MY::<Test::> := HACK.new;

multi plan($tests) {
    say "1..$tests";
}
sub proclaim($cond,$desc,$todo) {
    $test_count = $test_count + 1;
    if $cond {
        print "ok $test_count";
    } else {
        print "not ok $test_count";
    }
    if $desc {
        print " - $desc";
    } 
    if $todo {
        print " # TODO";
    }
    say;
}
multi ok($cond,$desc,:$todo) {
    proclaim($cond,$desc,$todo);
}
multi ok($cond,:$todo) {
    proclaim($cond,"",$todo);
}