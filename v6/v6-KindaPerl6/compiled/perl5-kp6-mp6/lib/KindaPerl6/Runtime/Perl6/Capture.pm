{

    package Capture;

    # Do not edit this file - Perl 5 generated by KindaPerl6
    # AUTHORS, COPYRIGHT: Please look at the source file.
    use v5;
    use strict;
    no strict "vars";
    use constant KP6_DISABLE_INSECURE_CODE => 0;
    use KindaPerl6::Runtime::Perl5::Runtime;
    my $_MODIFIED;
    INIT { $_MODIFIED = {} }
    INIT { $_ = ::DISPATCH( $::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
    do {
        do {
            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( ( $GLOBAL::Code_VAR_defined = $GLOBAL::Code_VAR_defined || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', $::Capture ), "true" ), "p5landish" ) ) { }
            else {
                do {
                    do {
                        ::MODIFIED($::Capture);
                        $::Capture = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'Capture' ) ), 'PROTOTYPE', );
                        }
                    }
            }
        };
        ::DISPATCH( ::DISPATCH( $::Capture, 'HOW', ), 'add_parent',    ::DISPATCH( $::Value, 'HOW', ) );
        ::DISPATCH( ::DISPATCH( $::Capture, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'invocant' ) );
        ::DISPATCH( ::DISPATCH( $::Capture, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'array' ) );
        ::DISPATCH( ::DISPATCH( $::Capture, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'hash' ) );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'arity' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH(
                            ( $GLOBAL::Code_infix_58__60__43__62_ = $GLOBAL::Code_infix_58__60__43__62_ || ::DISPATCH( $::Routine, "new", ) ),
                            'APPLY',
                            ::DISPATCH( ::DISPATCH( $self, "array" ), 'elems', ),
                            ::DISPATCH( ::DISPATCH( $self, "hash" ),  'elems', )
                        );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'perl' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $v;
                        $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } ) unless defined $v;
                        INIT { $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } ) }
                        my $s;
                        $s = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$s' } ) unless defined $s;
                        INIT { $s = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$s' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        $v;
                        ::DISPATCH_VAR( $s, 'STORE',
                            ::DISPATCH( ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', ::DISPATCH( $::Str, 'new', chr(92) ), ::DISPATCH( $::Str, 'new', '( ' ) ) );
                        do {
                            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( ::DISPATCH( $self, "invocant" ), 'defined', ), "true" ), "p5landish" ) ) {
                                do {
                                    ::DISPATCH_VAR(
                                        $s, 'STORE',
                                        ::DISPATCH(
                                            ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                            'APPLY', $s,
                                            ::DISPATCH(
                                                ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                                'APPLY',
                                                ::DISPATCH( ::DISPATCH( $self, "invocant" ), 'perl', ),
                                                ::DISPATCH( $::Str, 'new', ': ' )
                                            )
                                        )
                                    );
                                    }
                            }
                            else { ::DISPATCH( $::Bit, "new", 0 ) }
                        };
                        ::DISPATCH(
                            ::DISPATCH( $self, "array" ),
                            'map',
                            ::DISPATCH(
                                $::Code, 'new',
                                {   code => sub {
                                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                                        my $v;
                                        $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } ) unless defined $v;
                                        INIT { $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } ) }
                                        my $CAPTURE;
                                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                                        do {
                                            ::MODIFIED($Hash__);
                                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                                        };
                                        {
                                            my $_param_index = 0;
                                            if ( ::DISPATCH( $GLOBAL::Code_exists, 'APPLY', ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'v' ) ) )->{_value} ) {
                                                do {
                                                    ::MODIFIED($v);
                                                    $v = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'v' ) );
                                                    }
                                            }
                                            elsif ( ::DISPATCH( $GLOBAL::Code_exists, 'APPLY', ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', $_param_index ) ) )->{_value} ) {
                                                $v = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', $_param_index++ ) );
                                            }
                                        }
                                        ::DISPATCH_VAR(
                                            $s, 'STORE',
                                            ::DISPATCH(
                                                ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                                'APPLY',
                                                $s,
                                                ::DISPATCH( ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', ::DISPATCH( $v, 'perl', ), ::DISPATCH( $::Str, 'new', ', ' ) )
                                            )
                                        );
                                    },
                                    signature => ::DISPATCH(
                                        $::Signature,
                                        "new",
                                        {   invocant => $::Undef,
                                            array    => ::DISPATCH(
                                                $::List, "new",
                                                {   _array => [
                                                        ::DISPATCH(
                                                            $::Signature::Item,
                                                            'new',
                                                            {   sigil               => '$',
                                                                twigil              => '',
                                                                name                => 'v',
                                                                value               => $::Undef,
                                                                has_default         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_named_only       => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_optional         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_slurpy           => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_multidimensional => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_rw               => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_copy             => ::DISPATCH( $::Bit, 'new', 0 ),
                                                            }
                                                        ),
                                                    ]
                                                }
                                            ),
                                            return => $::Undef,
                                        }
                                    ),
                                }
                            )
                        );
                        return ( ::DISPATCH( ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', $s, ::DISPATCH( $::Str, 'new', ' )' ) ) );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'Str' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( $self, 'perl', );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'LOOKUP' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $key;
                        $key = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$key' } ) unless defined $key;
                        INIT { $key = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$key' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        {
                            my $_param_index = 0;
                            if ( ::DISPATCH( $GLOBAL::Code_exists, 'APPLY', ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'key' ) ) )->{_value} ) {
                                do {
                                    ::MODIFIED($key);
                                    $key = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'key' ) );
                                    }
                            }
                            elsif ( ::DISPATCH( $GLOBAL::Code_exists, 'APPLY', ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', $_param_index ) ) )->{_value} ) {
                                $key = ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', $_param_index++ ) );
                            }
                        }

                        # emit_body
                        do {
                            if (::DISPATCH(
                                    ::DISPATCH(
                                        ::DISPATCH(
                                            ( $GLOBAL::Code_prefix_58__60__33__62_ = $GLOBAL::Code_prefix_58__60__33__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                            'APPLY',
                                            ::DISPATCH( ( $GLOBAL::Code_defined = $GLOBAL::Code_defined || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', ::DISPATCH( $self, "hash" ) )
                                        ),
                                        "true"
                                    ),
                                    "p5landish"
                                )
                                )
                            {
                                do {
                                    ::DISPATCH_VAR( ::DISPATCH( $self, "hash" ), 'STORE', ::DISPATCH( $::Hash, 'new', ) );
                                    }
                            }
                            else { ::DISPATCH( $::Bit, "new", 0 ) }
                        };
                        return ( ::DISPATCH( ::DISPATCH( $self, "hash" ), 'LOOKUP', $key ) );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => $::Undef,
                            array    => ::DISPATCH(
                                $::List, "new",
                                {   _array => [
                                        ::DISPATCH(
                                            $::Signature::Item,
                                            'new',
                                            {   sigil               => '$',
                                                twigil              => '',
                                                name                => 'key',
                                                value               => $::Undef,
                                                has_default         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_named_only       => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_optional         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_slurpy           => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_multidimensional => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_rw               => ::DISPATCH( $::Bit, 'new', 0 ),
                                                is_copy             => ::DISPATCH( $::Bit, 'new', 0 ),
                                            }
                                        ),
                                    ]
                                }
                            ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
    };
    1
}
