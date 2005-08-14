{-# OPTIONS_GHC -fglasgow-exts -funbox-strict-fields -fallow-overlapping-instances -fno-warn-orphans #-}

module Pugs.PIL1 where
import Pugs.AST
import Pugs.Internals
import Pugs.Types
import Emit.PIR
import DrIFT.Perl5

{-! global : Perl5 !-}

instance Perl5 Scope
instance Perl5 SubType
instance Perl5 VInt where 
    showPerl5 = show
instance Perl5 VRat where 
    showPerl5 r = "(" ++ show x ++ "/" ++ show y ++ ")"
        where
        x = numerator r
        y = denominator r
instance Perl5 VNum where 
    showPerl5 = show
instance (Typeable a) => Perl5 (TVar a) where
    showPerl5 _ = "(warn '<ref>')"
instance Perl5 Exp where
    showPerl5 _ = "(undef)"

{-|
    The plan here is to first compile the environment (subroutines,
    statements, etc.) to an abstract syntax tree ('PIL' -- Pugs Intermediate
    Language) using the 'compile' function and 'Compile' class.
-}

data PIL_Stmts = PNil
    | PStmts
        { pStmt  :: !PIL_Stmt
        , pStmts :: !PIL_Stmts
        }
    | PPad
        { pScope :: !Scope
        , pSyms  :: ![(VarName, PIL_Expr)]
        , pStmts :: !PIL_Stmts
        }
    deriving (Show, Eq, Ord, Typeable)

data PIL_Stmt = PNoop | PStmt { pExpr :: !PIL_Expr } | PPos
        { pPos  :: !Pos
        , pExp  :: !Exp
        , pNode :: !PIL_Stmt
        }
    deriving (Show, Eq, Ord, Typeable)

data PIL_Expr
    = PRawName { pRawName :: !VarName }
    | PExp { pLV  :: !PIL_LValue }
    | PLit { pLit :: !PIL_Literal }
    | PThunk { pThunk :: !PIL_Expr }
    | PCode
        { pType    :: !SubType
        , pParams  :: ![TParam]
        , pBody    :: !PIL_Stmts
        }
    deriving (Show, Eq, Ord, Typeable)

data PIL_Decl = PSub
    { pSubName      :: !SubName
    , pSubType      :: !SubType
    , pSubParams    :: ![TParam]
    , pSubBody      :: !PIL_Stmts
    }
    deriving (Show, Eq, Ord, Typeable)

data PIL_Literal = PVal { pVal :: Val }
    deriving (Show, Eq, Ord, Typeable)

data PIL_LValue = PVar { pVarName :: !VarName }
    | PApp 
        { pCxt  :: !TCxt
        , pFun  :: !PIL_Expr
        , pInv  :: !(Maybe PIL_Expr)
        , pArgs :: ![PIL_Expr]
        }
    | PAssign
        { pLHS  :: ![PIL_LValue]
        , pRHS  :: !PIL_Expr
        }
    | PBind
        { pLHS  :: ![PIL_LValue]
        , pRHS  :: !PIL_Expr
        }
    deriving (Show, Eq, Ord, Typeable)

data TParam = MkTParam
    { tpParam   :: !Param
    , tpDefault :: !(Maybe (PIL_Expr))
    }
    deriving (Show, Eq, Ord, Typeable)

data TCxt
    = TCxtVoid | TCxtLValue !Type | TCxtItem !Type | TCxtSlurpy !Type
    | TTailCall !TCxt
    deriving (Show, Eq, Ord, Typeable)

data TEnv = MkTEnv
    { tLexDepth :: !Int                 -- ^ Lexical scope depth
    , tTokDepth :: !Int                 -- ^ Exp nesting depth
    , tCxt      :: !TCxt                -- ^ Current context
    , tReg      :: !(TVar (Int, String))-- ^ Register name supply
    , tLabel    :: !(TVar Int)          -- ^ Label name supply
    }
    deriving (Show, Eq, Ord, Typeable)

------------------------------------------------------------------------
{- Previously generated by DrIFT : Look, but Don't Touch. -}

instance Perl5 TParam where
    showPerl5 (MkTParam aa ab) = showP5HashObj "MkTParam"
	      [("tpParam", showPerl5 aa) , ("tpDefault", showPerl5 ab)]

instance Perl5 TCxt where
    showPerl5 (TCxtVoid) = showP5Class "TCxtVoid"
    showPerl5 (TCxtLValue aa) = showP5ArrayObj "TCxtLValue"
	      [showPerl5 aa]
    showPerl5 (TCxtItem aa) = showP5ArrayObj "TCxtItem" [showPerl5 aa]
    showPerl5 (TCxtSlurpy aa) = showP5ArrayObj "TCxtSlurpy"
	      [showPerl5 aa]
    showPerl5 (TTailCall aa) = showP5ArrayObj "TTailCall"
	      [showPerl5 aa]

instance Perl5 TEnv where
    showPerl5 (MkTEnv aa ab ac ad ae) = showP5HashObj "MkTEnv"
	      [("tLexDepth", showPerl5 aa) , ("tTokDepth", showPerl5 ab) ,
	       ("tCxt", showPerl5 ac) , ("tReg", showPerl5 ad) ,
	       ("tLabel", showPerl5 ae)]

instance Perl5 Val where
    showPerl5 (VUndef) = showP5Class "VUndef"
    showPerl5 (VBool aa) = showP5ArrayObj "VBool" [showPerl5 aa]
    showPerl5 (VInt aa) = showP5ArrayObj "VInt" [showPerl5 aa]
    showPerl5 (VRat aa) = showP5ArrayObj "VRat" [showPerl5 aa]
    showPerl5 (VNum aa) = showP5ArrayObj "VNum" [showPerl5 aa]
    showPerl5 (VStr aa) = showP5ArrayObj "VStr" [showPerl5 aa]
    showPerl5 (VList aa) = showP5ArrayObj "VList" [showPerl5 aa]
    showPerl5 (VType aa) = showP5ArrayObj "VType" [showPerl5 aa]
    showPerl5 _ = "(warn '<val>')"

instance Perl5 Cxt where
    showPerl5 (CxtVoid) = showP5Class "CxtVoid"
    showPerl5 (CxtItem aa) = showP5ArrayObj "CxtItem" [showPerl5 aa]
    showPerl5 (CxtSlurpy aa) = showP5ArrayObj "CxtSlurpy"
	      [showPerl5 aa]

instance Perl5 Type where
    showPerl5 (MkType aa) = showP5ArrayObj "MkType" [showPerl5 aa]
    showPerl5 (TypeOr aa ab) = showP5ArrayObj "TypeOr"
	      [showPerl5 aa , showPerl5 ab]
    showPerl5 (TypeAnd aa ab) = showP5ArrayObj "TypeAnd"
	      [showPerl5 aa , showPerl5 ab]

instance Perl5 Param where
    showPerl5 (MkParam aa ab ac ad ae af ag ah ai) =
	      showP5HashObj "MkParam"
	      [("isInvocant", showPerl5 aa) , ("isOptional", showPerl5 ab) ,
	       ("isNamed", showPerl5 ac) , ("isLValue", showPerl5 ad) ,
	       ("isWritable", showPerl5 ae) , ("isLazy", showPerl5 af) ,
	       ("paramName", showPerl5 ag) , ("paramContext", showPerl5 ah) ,
	       ("paramDefault", showPerl5 ai)]

instance Perl5 Pos where
    showPerl5 (MkPos aa ab ac ad ae) = showP5HashObj "MkPos"
	      [("posName", showPerl5 aa) , ("posBeginLine", showPerl5 ab) ,
	       ("posBeginColumn", showPerl5 ac) , ("posEndLine", showPerl5 ad) ,
	       ("posEndColumn", showPerl5 ae)]

{-
data Val
    = VUndef                 -- ^ Undefined value
    | VBool     !VBool       -- ^ Boolean value
    | VInt      !VInt        -- ^ Integer value
    | VRat      !VRat        -- ^ Rational number value
    | VNum      !VNum        -- ^ Number (i.e. a double)
    | VStr      !VStr        -- ^ String value
    | VList     !VList       -- ^ List value
    | VType     !VType       -- ^ Type value (e.g. @Int@ or @Type@)

data Cxt = CxtVoid         -- ^ Context that isn't expecting any values
         | CxtItem !Type   -- ^ Context expecting a value of the specified type
         | CxtSlurpy !Type -- ^ Context expecting multiple values of the
                           --     specified type
data Type
    = MkType !String      -- ^ A regular type
    | TypeOr  !Type !Type -- ^ The disjunction (|) of two types
    | TypeAnd !Type !Type -- ^ The conjunction (&) of two types

data Param = MkParam
    { isInvocant    :: !Bool        -- ^ Is it in invocant slot?
    , isOptional    :: !Bool        -- ^ Is it optional?
    , isNamed       :: !Bool        -- ^ Is it named-only?
    , isLValue      :: !Bool        -- ^ Is it lvalue (i.e. not `is copy`)?
    , isWritable    :: !Bool        -- ^ Is it writable (i.e. `is rw`)?
    , isLazy        :: !Bool        -- ^ Is it call-by-name (short-circuit)?
    , paramName     :: !String      -- ^ Parameter name
    , paramContext  :: !Cxt         -- ^ Parameter context: slurpiness and type
    , paramDefault  :: !Exp         -- ^ Default expression (to evaluate to)
    }

data Pos = MkPos
    { posName           :: !String
    , posBeginLine      :: !Int
    , posBeginColumn    :: !Int
    , posEndLine        :: !Int
    , posEndColumn      :: !Int
    }
-}
{-* Generated by DrIFT : Look, but Don't Touch. *-}
instance Perl5 PIL_Stmts where
    showPerl5 (PNil) = showP5Class "PNil"
    showPerl5 (PStmts aa ab) = showP5HashObj "PStmts"
	      [("pStmt", showPerl5 aa) , ("pStmts", showPerl5 ab)]
    showPerl5 (PPad aa ab ac) = showP5HashObj "PPad"
	      [("pScope", showPerl5 aa) , ("pSyms", showPerl5 ab) ,
	       ("pStmts", showPerl5 ac)]

instance Perl5 PIL_Stmt where
    showPerl5 (PNoop) = showP5Class "PNoop"
    showPerl5 (PStmt aa) = showP5HashObj "PStmt"
	      [("pExpr", showPerl5 aa)]
    showPerl5 (PPos aa ab ac) = showP5HashObj "PPos"
	      [("pPos", showPerl5 aa) , ("pExp", showPerl5 ab) ,
	       ("pNode", showPerl5 ac)]

instance Perl5 PIL_Expr where
    showPerl5 (PRawName aa) = showP5HashObj "PRawName"
	      [("pRawName", showPerl5 aa)]
    showPerl5 (PExp aa) = showP5HashObj "PExp" [("pLV", showPerl5 aa)]
    showPerl5 (PLit aa) = showP5HashObj "PLit" [("pLit", showPerl5 aa)]
    showPerl5 (PThunk aa) = showP5HashObj "PThunk"
	      [("pThunk", showPerl5 aa)]
    showPerl5 (PCode aa ab ac) = showP5HashObj "PCode"
	      [("pType", showPerl5 aa) , ("pParams", showPerl5 ab) ,
	       ("pBody", showPerl5 ac)]

instance Perl5 PIL_Decl where
    showPerl5 (PSub aa ab ac ad) = showP5HashObj "PSub"
	      [("pSubName", showPerl5 aa) , ("pSubType", showPerl5 ab) ,
	       ("pSubParams", showPerl5 ac) , ("pSubBody", showPerl5 ad)]

instance Perl5 PIL_Literal where
    showPerl5 (PVal aa) = showP5HashObj "PVal" [("pVal", showPerl5 aa)]

instance Perl5 PIL_LValue where
    showPerl5 (PVar aa) = showP5HashObj "PVar"
	      [("pVarName", showPerl5 aa)]
    showPerl5 (PApp aa ab ac ad) = showP5HashObj "PApp"
	      [("pCxt", showPerl5 aa) , ("pFun", showPerl5 ab) ,
	       ("pInv", showPerl5 ac) , ("pArgs", showPerl5 ad)]
    showPerl5 (PAssign aa ab) = showP5HashObj "PAssign"
	      [("pLHS", showPerl5 aa) , ("pRHS", showPerl5 ab)]
    showPerl5 (PBind aa ab) = showP5HashObj "PBind"
	      [("pLHS", showPerl5 aa) , ("pRHS", showPerl5 ab)]

--  Imported from other files :-
