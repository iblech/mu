{ package KindaPerl6::Traverse; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict 'vars';
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
our $Code_visit = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_visit' } ) ;
;
our $Code_visit_subnode = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_visit_subnode' } ) ;
;
do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::KindaPerl6::Traverse )
,"true"),"p5landish") ) { }  else { our $Code_visit = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_visit' } ) ;
;
our $Code_visit_subnode = ::DISPATCH( $::Routine, 'new', { modified => $_MODIFIED, name => '$Code_visit_subnode' } ) ;
;
do {::MODIFIED($::KindaPerl6::Traverse);
$::KindaPerl6::Traverse = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Traverse' )
 )
, 'PROTOTYPE',  )
} } }
; do {::MODIFIED($Code_visit);
$Code_visit = ::DISPATCH( $::Code, 'new', { code => sub { my $result; $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } )  unless defined $result; BEGIN { $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } ) }
;
my $data; $data = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$data' } )  unless defined $data; BEGIN { $data = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$data' } ) }
;
my $item; $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } )  unless defined $item; BEGIN { $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } ) }
;
my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $visitor; $visitor = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$visitor' } )  unless defined $visitor; BEGIN { $visitor = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$visitor' } ) }
;
my $node; $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } )  unless defined $node; BEGIN { $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } ) }
;
my $node_name; $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } )  unless defined $node_name; BEGIN { $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } ) }
;
my $path; $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } )  unless defined $path; BEGIN { $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($visitor);
$visitor = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 0 )
 )
};do {::MODIFIED($node);
$node = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 1 )
 )
};do {::MODIFIED($node_name);
$node_name = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 2 )
 )
};do {::MODIFIED($path);
$path = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 3 )
 )
};do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_prefix_58__60__33__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_defined, 'APPLY', $path )
 )
,"true"),"p5landish") ) { do {::MODIFIED($path);
$path = ::DISPATCH( $::Array, "new", { _array => [] } )
} }  }
; do { if (::DISPATCH(::DISPATCH(::DISPATCH( $node, 'isa', ::DISPATCH( $::Str, 'new', 'Array' )
 )
,"true"),"p5landish") ) { my $result; $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } )  unless defined $result; BEGIN { $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } ) }
;
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
do {::MODIFIED($result);
$result = ::DISPATCH( $::Array, "new", { _array => [] } )
}; $subitem; do { for my $subitem ( @{ ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', $node )
 )
->{_value}{_array} } ) { my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
::DISPATCH( $GLOBAL::Code_push, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', $result )
, ::DISPATCH( $Code_visit_subnode, 'APPLY', $visitor, $subitem, $path )
 )
 } }
; return($result)
 }  }
; do { if (::DISPATCH(::DISPATCH(::DISPATCH( $node, 'isa', ::DISPATCH( $::Str, 'new', 'Hash' )
 )
,"true"),"p5landish") ) { my $result; $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } )  unless defined $result; BEGIN { $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } ) }
;
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
do {::MODIFIED($result);
$result = ::DISPATCH( $::Hash, "new", { _hash => {  } } )
}; $subitem; do { for my $subitem ( @{ ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_keys, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__37__62_, 'APPLY', $node )
 )
 )
->{_value}{_array} } ) { my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; BEGIN { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
do {::MODIFIED(::DISPATCH( $result, 'LOOKUP', $subitem )
);
::DISPATCH( $result, 'LOOKUP', $subitem )
 = ::DISPATCH( $Code_visit_subnode, 'APPLY', $visitor, ::DISPATCH( $node, 'LOOKUP', $subitem )
, $path )
} } }
; return($result)
 }  }
; do { if (::DISPATCH(::DISPATCH(::DISPATCH( $node, 'isa', ::DISPATCH( $::Str, 'new', 'Str' )
 )
,"true"),"p5landish") ) { return($node)
 }  }
; do { if (::DISPATCH(::DISPATCH(::DISPATCH( $node, 'isa', ::DISPATCH( $::Str, 'new', 'Pad' )
 )
,"true"),"p5landish") ) { return($node)
 }  }
; do {::MODIFIED($path);
$path = ::DISPATCH( $::Array, "new", { _array => [$node, ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', $path )
] } )
}; do {::MODIFIED($result);
$result = ::DISPATCH( $visitor, 'visit', $node, $node_name, $path )
}; do { if (::DISPATCH(::DISPATCH($result,"true"),"p5landish") ) { return($result)
 }  }
; do {::MODIFIED($result);
$result = ::DISPATCH( $::Hash, "new", { _hash => {  } } )
}; do {::MODIFIED($data);
$data = ::DISPATCH( $node, 'attribs',  )
}; $item; do { for my $item ( @{ ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_keys, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__37__62_, 'APPLY', $data )
 )
 )
->{_value}{_array} } ) { my $item; $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } )  unless defined $item; BEGIN { $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } ) }
my $item; $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } )  unless defined $item; BEGIN { $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } ) }
;
do {::MODIFIED(::DISPATCH( $result, 'LOOKUP', $item )
);
::DISPATCH( $result, 'LOOKUP', $item )
 = ::DISPATCH( $Code_visit_subnode, 'APPLY', $visitor, ::DISPATCH( $data, 'LOOKUP', $item )
, $path )
} } }
; return(::DISPATCH( $node, 'new', ::DISPATCH( $GLOBAL::Code_prefix_58__60__37__62_, 'APPLY', $result )
 )
)
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::Array, "new", { _array => [ ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'visitor', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'node', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'node_name', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'path', } )
,  ] } ), hash     => ::DISPATCH( $::Hash,  "new", { _hash  => {  } } ), return   => $::Undef, } )
,  } )
}; do {::MODIFIED($Code_visit_subnode);
$Code_visit_subnode = ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $visitor; $visitor = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$visitor' } )  unless defined $visitor; BEGIN { $visitor = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$visitor' } ) }
;
my $subnode; $subnode = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subnode' } )  unless defined $subnode; BEGIN { $subnode = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subnode' } ) }
;
my $path; $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } )  unless defined $path; BEGIN { $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($visitor);
$visitor = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 0 )
 )
};do {::MODIFIED($subnode);
$subnode = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 1 )
 )
};do {::MODIFIED($path);
$path = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 2 )
 )
};do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_infix_58__60__124__124__62_, 'APPLY', ::DISPATCH( $subnode, 'isa', ::DISPATCH( $::Str, 'new', 'Array' )
 )
, ::DISPATCH( $GLOBAL::Code_infix_58__60__124__124__62_, 'APPLY', ::DISPATCH( $subnode, 'isa', ::DISPATCH( $::Str, 'new', 'Hash' )
 )
, ::DISPATCH( $GLOBAL::Code_infix_58__60__124__124__62_, 'APPLY', ::DISPATCH( $subnode, 'isa', ::DISPATCH( $::Str, 'new', 'Str' )
 )
, ::DISPATCH( $subnode, 'isa', ::DISPATCH( $::Str, 'new', 'Pad' )
 )
 )
 )
 )
,"true"),"p5landish") ) { return(::DISPATCH( $Code_visit, 'APPLY', $visitor, $subnode, $::Undef, $path )
)
 }  else { return(::DISPATCH( $subnode, 'emit', $visitor, $path )
)
 } }
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::Array, "new", { _array => [ ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'visitor', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'subnode', } )
, ::DISPATCH( $::Signature::Item, "new", { sigil  => '$', twigil => '', name   => 'path', } )
,  ] } ), hash     => ::DISPATCH( $::Hash,  "new", { _hash  => {  } } ), return   => $::Undef, } )
,  } )
}
; 1 }

