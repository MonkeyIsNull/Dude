# Compile with: racc grammar.y -o parser.rb

class Parser

token IF ELSE
token FUNCTION
token NEWLINE
token NUMBER
token STRING
token TRUE FALSE NULL
token IDENTIFIER
token END

# Precedence table
# Based on http://en.wikipedia.org/wiki/Operators_in_C_and_C%2B%2B#Operator_precedence
prechigh
  left  '.'
  right 'not'
  left  '*' '/'
  left  '+' '-'
  left  'greaterthan' 'greq' 'lessthan' 'lesseq'
  left  'equals' 'notequals'
  left  'and'
  left  'or'
  right '='
  left  ','
preclow

rule
Expressions:
               /* nothing */                      { result = Nodes.new([]) }
  | Terminator                         { result = Nodes.new([]) }
  | ExpressionList                     { result = Nodes.new(val[0]) }
  ;

  ExpressionList:
    Expression                            { result = [ val[0] ] }
  | ExpressionList Terminator Expression  { result = val[0] << val[2] }
    # To ignore trailing line breaks
  | ExpressionList Terminator             { result = val[0] }
  ;

  # All tokens that can terminate an expression
  Terminator:
    NEWLINE
  | ";"
  ;
# All types of expression in our language
  Expression:
    Literal
  | Call
  | Operator
  | Assign
  | Function 
  | If
  | '(' Expression ')'            { result = val[1] }
  ;

# All hard-coded values
  Literal:
    NUMBER                        { result = NumberNode.new(val[0]) }
  | STRING                        { result = StringNode.new(val[0]) }
  | TRUE                          { result = TrueNode.new }
  | FALSE                         { result = FalseNode.new }
  | NULL                          { result = NilNode.new }
  ;

# Method call
  Call:
    # method(1, 2, 3)
    IDENTIFIER Arguments          { result = CallNode.new(nil, val[0], val[1]) }
    # receiver.method(1, 2, 3)
  | Expression '.' IDENTIFIER
      Arguments                   { result = CallNode.new(val[0], val[2], val[3]) }
  ;

  Arguments:
    /* nothing */                 { result = [] }
  | '(' ')'                       { result = [] }
  | '(' ArgList ')'               { result = val[1] }
  ;

  ArgList:
    Expression                    { result = val }
  | ArgList "," Expression        { result = val[0] << val[2] }
  ;

Operator:
          # Binary operators
    Expression '||' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '&&' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '==' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '!=' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '>=' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '<=' Expression    { result = CallNode.new(val[0], val[1], [val[2]]) }
    # 1 + 2 => 1.+(2)
    #   1       +       2                                   1       "+"      [2]
  | Expression '+' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '-' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '*' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '/' Expression     { result = CallNode.new(val[0], val[1], [val[2]]) }
  # Unary operators
  | '!' Expression                { result = CallNode.new(val[1], val[0], []) }
  ;

  # Assignment to a local variable
  Assign:
    IDENTIFIER "=" Expression     { result = AssignNode.new(val[0], val[2]) }
  ;
# Method definition
  Function:
    FUNCTION IDENTIFIER Parameters Terminator
      Expressions
    END                           { result = FunctionNode.new(val[1], val[2], val[4]) }
  ;

  Parameters:
    /* nothing */                 { result = [] }
  | '(' ')'                       { result = [] }
  | '(' ParamList ')'             { result = val[1] }
  ;

  ParamList:
    IDENTIFIER                    { result = val }
  | ParamList "," IDENTIFIER      { result = val[0] << val[2] }
  ;

  If:
    IF Expression Terminator
      Expressions
    END                                 { result = IfNode.new(val[1], val[3], nil) }
  | IF Expression Terminator
      Expressions
    ELSE Terminator
      Expressions
    END                                 { result = IfNode.new(val[1], val[3], val[6]) }
  ;
end
---- header
  require "lexer"
  require "nodes"

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.run(code)
    p @tokens if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end

