#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 146)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.run(code)
    p @tokens if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    22,     5,    21,     5,    14,    15,    16,    17,    18,    19,
    25,    40,    22,     5,    21,     5,    14,    15,    16,    17,
    18,    19,     5,    74,    43,     6,    45,     6,    13,    26,
    27,    28,    29,    30,    31,    32,    33,     6,    20,     6,
    13,    41,    70,    72,    40,    69,     6,    22,    81,    21,
    20,    14,    15,    16,    17,    18,    19,    80,    22,    47,
    21,    82,    14,    15,    16,    17,    18,    19,    79,    25,
    83,    78,    22,    66,    21,    13,    14,    15,    16,    17,
    18,    19,    23,    86,   nil,    20,    13,    62,    26,    27,
    28,    29,    30,    31,    32,    33,    20,   nil,   nil,    22,
    13,    21,     5,    14,    15,    16,    17,    18,    19,   nil,
    20,    22,   nil,    21,   nil,    14,    15,    16,    17,    18,
    19,   nil,   nil,   nil,   nil,   nil,     6,    13,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    22,    20,    21,    13,
    14,    15,    16,    17,    18,    19,   nil,   nil,    22,    20,
    21,   nil,    14,    15,    16,    17,    18,    19,   nil,   nil,
   nil,   nil,   nil,    22,    13,    21,     5,    14,    15,    16,
    17,    18,    19,   nil,    20,    22,    13,    21,   nil,    14,
    15,    16,    17,    18,    19,   nil,    20,   nil,   nil,   nil,
     6,    13,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    22,    20,    21,    13,    14,    15,    16,    17,    18,    19,
   nil,   nil,    22,    20,    21,   nil,    14,    15,    16,    17,
    18,    19,   nil,   nil,   nil,    22,   nil,    21,    13,    14,
    15,    16,    17,    18,    19,   nil,   nil,    22,    20,    21,
    13,    14,    15,    16,    17,    18,    19,   nil,   nil,   nil,
    20,   nil,    22,    13,    21,   nil,    14,    15,    16,    17,
    18,    19,   nil,    20,    22,    13,    21,   nil,    14,    15,
    16,    17,    18,    19,   nil,    20,   nil,    22,   nil,    21,
    13,    14,    15,    16,    17,    18,    19,   nil,   nil,    22,
    20,    21,    13,    14,    15,    16,    17,    18,    19,   nil,
   nil,   nil,    20,   nil,    22,    13,    21,   nil,    14,    15,
    16,    17,    18,    19,   nil,    20,    22,    13,    21,   nil,
    14,    15,    16,    17,    18,    19,   nil,    20,   nil,    22,
   nil,    21,    13,    14,    15,    16,    17,    18,    19,   nil,
   nil,    22,    20,    21,    13,    14,    15,    16,    17,    18,
    19,   nil,   nil,     5,    20,   nil,   nil,    13,   nil,   nil,
   nil,    25,   nil,    36,    37,    34,    35,    20,   nil,    13,
    25,   nil,    36,    37,    34,    35,   nil,     6,   nil,    20,
    26,    27,    28,    29,    30,    31,    32,    33,   nil,    26,
    27,    28,    29,    30,    31,    32,    33,    25,   nil,    36,
    37,    34,    35,   nil,   nil,    25,   nil,    36,    37,    34,
    35,   nil,   nil,   nil,   nil,   nil,    26,    27,    28,    29,
    30,    31,    32,    33,    26,    27,    28,    29,    30,    31,
    32,    33,    25,   nil,    36,    37,    34,    35,   nil,   nil,
    25,   nil,    36,    37,    34,    35,   nil,   nil,   nil,   nil,
   nil,    26,    27,    28,    29,    30,    31,    32,    33,    26,
    27,    28,    29,    30,    31,    32,    33,    25,   nil,    36,
    37,    34,    35,   nil,   nil,   nil,    25,   nil,    36,    37,
    34,    35,   nil,   nil,   nil,   nil,    26,    27,    28,    29,
    30,    31,    32,    33,    60,    26,    27,    28,    29,    30,
    31,    32,    33,    25,   nil,    36,    37,    34,    35,   nil,
   nil,    25,   nil,    36,    37,    34,    35,   nil,   nil,   nil,
   nil,   nil,    26,    27,    28,    29,    30,    31,    32,    33,
    26,    27,    28,    29,    30,    31,    32,    33,    25,   nil,
    36,    37,    34,    35,   nil,   nil,    25,   nil,    36,    37,
    34,    35,   nil,   nil,   nil,   nil,   nil,    26,    27,    28,
    29,    30,    31,    32,    33,    26,    27,    28,    29,    30,
    31,    32,    33,    25,   nil,    36,    37,    34,    35,   nil,
   nil,    25,   nil,    36,    37,    34,    35,   nil,   nil,   nil,
   nil,   nil,    26,    27,    28,    29,    30,    31,    32,    33,
    26,    27,    28,    29,    30,    31,    32,    33,    25,   nil,
    36,    37,    34,    35,   nil,   nil,    25,   nil,    36,    37,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    26,    27,    28,
    29,    30,    31,    32,    33,    26,    27,    28,    29,    30,
    31,    32,    33,    25,   nil,    36,    37,   nil,   nil,   nil,
   nil,    25,   nil,    36,    37,    34,    35,   nil,   nil,   nil,
   nil,   nil,    26,    27,    28,    29,    30,    31,    32,    33,
    26,    27,    28,    29,    30,    31,    32,    33 ]

racc_action_check = [
     0,    65,     0,     0,     0,     0,     0,     0,     0,     0,
    58,    47,    84,    81,    84,    84,    84,    84,    84,    84,
    84,    84,     3,    66,    21,    65,    23,     0,     0,    58,
    58,    58,    58,    58,    58,    58,    58,    81,     0,    84,
    84,    19,    63,    66,    19,    63,     3,    41,    75,    41,
    84,    41,    41,    41,    41,    41,    41,    75,    40,    25,
    40,    77,    40,    40,    40,    40,    40,    40,    73,    59,
    79,    73,    13,    43,    13,    41,    13,    13,    13,    13,
    13,    13,     1,    85,   nil,    41,    40,    40,    59,    59,
    59,    59,    59,    59,    59,    59,    40,   nil,   nil,    71,
    13,    71,    71,    71,    71,    71,    71,    71,    71,   nil,
    13,    20,   nil,    20,   nil,    20,    20,    20,    20,    20,
    20,   nil,   nil,   nil,   nil,   nil,    71,    71,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    70,    71,    70,    20,
    70,    70,    70,    70,    70,    70,   nil,   nil,    22,    20,
    22,   nil,    22,    22,    22,    22,    22,    22,   nil,   nil,
   nil,   nil,   nil,    67,    70,    67,    67,    67,    67,    67,
    67,    67,    67,   nil,    70,    24,    22,    24,   nil,    24,
    24,    24,    24,    24,    24,   nil,    22,   nil,   nil,   nil,
    67,    67,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    37,    67,    37,    24,    37,    37,    37,    37,    37,    37,
   nil,   nil,    26,    24,    26,   nil,    26,    26,    26,    26,
    26,    26,   nil,   nil,   nil,    27,   nil,    27,    37,    27,
    27,    27,    27,    27,    27,   nil,   nil,    28,    37,    28,
    26,    28,    28,    28,    28,    28,    28,   nil,   nil,   nil,
    26,   nil,    29,    27,    29,   nil,    29,    29,    29,    29,
    29,    29,   nil,    27,    30,    28,    30,   nil,    30,    30,
    30,    30,    30,    30,   nil,    28,   nil,    31,   nil,    31,
    29,    31,    31,    31,    31,    31,    31,   nil,   nil,    32,
    29,    32,    30,    32,    32,    32,    32,    32,    32,   nil,
   nil,   nil,    30,   nil,    33,    31,    33,   nil,    33,    33,
    33,    33,    33,    33,   nil,    31,    34,    32,    34,   nil,
    34,    34,    34,    34,    34,    34,   nil,    32,   nil,    36,
   nil,    36,    33,    36,    36,    36,    36,    36,    36,   nil,
   nil,    35,    33,    35,    34,    35,    35,    35,    35,    35,
    35,   nil,   nil,    44,    34,   nil,   nil,    36,   nil,   nil,
   nil,    44,   nil,    44,    44,    44,    44,    36,   nil,    35,
    48,   nil,    48,    48,    48,    48,   nil,    44,   nil,    35,
    44,    44,    44,    44,    44,    44,    44,    44,   nil,    48,
    48,    48,    48,    48,    48,    48,    48,     4,   nil,     4,
     4,     4,     4,   nil,   nil,    76,   nil,    76,    76,    76,
    76,   nil,   nil,   nil,   nil,   nil,     4,     4,     4,     4,
     4,     4,     4,     4,    76,    76,    76,    76,    76,    76,
    76,    76,    42,   nil,    42,    42,    42,    42,   nil,   nil,
    61,   nil,    61,    61,    61,    61,   nil,   nil,   nil,   nil,
   nil,    42,    42,    42,    42,    42,    42,    42,    42,    61,
    61,    61,    61,    61,    61,    61,    61,    64,   nil,    64,
    64,    64,    64,   nil,   nil,   nil,    38,   nil,    38,    38,
    38,    38,   nil,   nil,   nil,   nil,    64,    64,    64,    64,
    64,    64,    64,    64,    38,    38,    38,    38,    38,    38,
    38,    38,    38,    49,   nil,    49,    49,    49,    49,   nil,
   nil,    50,   nil,    50,    50,    50,    50,   nil,   nil,   nil,
   nil,   nil,    49,    49,    49,    49,    49,    49,    49,    49,
    50,    50,    50,    50,    50,    50,    50,    50,    51,   nil,
    51,    51,    51,    51,   nil,   nil,    52,   nil,    52,    52,
    52,    52,   nil,   nil,   nil,   nil,   nil,    51,    51,    51,
    51,    51,    51,    51,    51,    52,    52,    52,    52,    52,
    52,    52,    52,    53,   nil,    53,    53,    53,    53,   nil,
   nil,    54,   nil,    54,    54,    54,    54,   nil,   nil,   nil,
   nil,   nil,    53,    53,    53,    53,    53,    53,    53,    53,
    54,    54,    54,    54,    54,    54,    54,    54,    55,   nil,
    55,    55,    55,    55,   nil,   nil,    56,   nil,    56,    56,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    55,    55,    55,
    55,    55,    55,    55,    55,    56,    56,    56,    56,    56,
    56,    56,    56,    57,   nil,    57,    57,   nil,   nil,   nil,
   nil,    46,   nil,    46,    46,    46,    46,   nil,   nil,   nil,
   nil,   nil,    57,    57,    57,    57,    57,    57,    57,    57,
    46,    46,    46,    46,    46,    46,    46,    46 ]

racc_action_pointer = [
    -2,    82,   nil,    17,   384,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    70,   nil,   nil,   nil,   nil,   nil,    14,
   109,    13,   146,    26,   173,    48,   210,   223,   235,   250,
   262,   275,   287,   302,   314,   339,   327,   198,   463,   nil,
    56,    45,   419,    43,   348,   nil,   638,   -19,   357,   490,
   498,   525,   533,   560,   568,   595,   603,   630,    -3,    56,
   nil,   427,   nil,    14,   454,    -4,    12,   161,   nil,   nil,
   134,    97,   nil,    40,   nil,    45,   392,    49,   nil,    59,
   nil,     8,   nil,   nil,    10,    71,   nil ]

racc_action_default = [
    -1,   -50,    -2,    -3,    -4,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -50,   -16,   -17,   -18,   -19,   -20,   -23,
   -50,   -50,   -50,   -50,    -6,   -50,   -50,   -50,   -50,   -50,
   -50,   -50,   -50,   -50,   -50,   -50,   -50,   -50,   -50,   -21,
   -50,   -50,   -40,   -43,   -50,    87,    -5,   -23,   -28,   -29,
   -30,   -31,   -32,   -33,   -34,   -35,   -36,   -37,   -38,   -39,
   -15,   -26,   -24,   -50,   -41,   -50,   -50,    -1,   -22,   -25,
   -50,    -1,   -44,   -50,   -46,   -50,   -27,   -50,   -45,   -50,
   -48,   -50,   -42,   -47,    -1,   -50,   -49 ]

racc_goto_table = [
     1,    24,    38,    39,    63,    65,    73,   nil,   nil,    42,
   nil,    44,   nil,    46,   nil,    48,    49,    50,    51,    52,
    53,    54,    55,    56,    57,    58,    59,   nil,   nil,    61,
    64,    68,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    67,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    76,
   nil,   nil,   nil,    71,   nil,   nil,   nil,    75,   nil,   nil,
   nil,    77,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    84,
   nil,   nil,   nil,   nil,    85 ]

racc_goto_check = [
     1,     2,     4,    11,    12,    13,    14,   nil,   nil,     4,
   nil,     4,   nil,     4,   nil,     4,     4,     4,     4,     4,
     4,     4,     4,     4,     4,     4,     4,   nil,   nil,     4,
     4,    11,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     2,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     4,
   nil,   nil,   nil,     2,   nil,   nil,   nil,     1,   nil,   nil,
   nil,     1,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     2,
   nil,   nil,   nil,   nil,     1 ]

racc_goto_pointer = [
   nil,     0,    -2,   nil,   -11,   nil,   nil,   nil,   nil,   nil,
   nil,   -16,   -36,   -38,   -60 ]

racc_goto_default = [
   nil,   nil,     2,     3,     4,     7,     8,     9,    10,    11,
    12,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 42, :_reduce_1,
  1, 42, :_reduce_2,
  1, 42, :_reduce_3,
  1, 44, :_reduce_4,
  3, 44, :_reduce_5,
  2, 44, :_reduce_6,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  3, 45, :_reduce_15,
  1, 46, :_reduce_16,
  1, 46, :_reduce_17,
  1, 46, :_reduce_18,
  1, 46, :_reduce_19,
  1, 46, :_reduce_20,
  2, 47, :_reduce_21,
  4, 47, :_reduce_22,
  0, 52, :_reduce_23,
  2, 52, :_reduce_24,
  3, 52, :_reduce_25,
  1, 53, :_reduce_26,
  3, 53, :_reduce_27,
  3, 48, :_reduce_28,
  3, 48, :_reduce_29,
  3, 48, :_reduce_30,
  3, 48, :_reduce_31,
  3, 48, :_reduce_32,
  3, 48, :_reduce_33,
  3, 48, :_reduce_34,
  3, 48, :_reduce_35,
  3, 48, :_reduce_36,
  3, 48, :_reduce_37,
  3, 48, :_reduce_38,
  3, 48, :_reduce_39,
  2, 48, :_reduce_40,
  3, 49, :_reduce_41,
  6, 50, :_reduce_42,
  0, 54, :_reduce_43,
  2, 54, :_reduce_44,
  3, 54, :_reduce_45,
  1, 55, :_reduce_46,
  3, 55, :_reduce_47,
  5, 51, :_reduce_48,
  8, 51, :_reduce_49 ]

racc_reduce_n = 50

racc_shift_n = 87

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :ELSE => 3,
  :FUNCTION => 4,
  :NEWLINE => 5,
  :NUMBER => 6,
  :STRING => 7,
  :TRUE => 8,
  :FALSE => 9,
  :NULL => 10,
  :IDENTIFIER => 11,
  :END => 12,
  "." => 13,
  "not" => 14,
  "*" => 15,
  "/" => 16,
  "+" => 17,
  "-" => 18,
  "greaterthan" => 19,
  "greq" => 20,
  "lessthan" => 21,
  "lesseq" => 22,
  "equals" => 23,
  "notequals" => 24,
  "and" => 25,
  "or" => 26,
  "=" => 27,
  "," => 28,
  ";" => 29,
  "(" => 30,
  ")" => 31,
  "||" => 32,
  "&&" => 33,
  "==" => 34,
  "!=" => 35,
  ">" => 36,
  ">=" => 37,
  "<" => 38,
  "<=" => 39,
  "!" => 40 }

racc_nt_base = 41

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "ELSE",
  "FUNCTION",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NULL",
  "IDENTIFIER",
  "END",
  "\".\"",
  "\"not\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\"greaterthan\"",
  "\"greq\"",
  "\"lessthan\"",
  "\"lesseq\"",
  "\"equals\"",
  "\"notequals\"",
  "\"and\"",
  "\"or\"",
  "\"=\"",
  "\",\"",
  "\";\"",
  "\"(\"",
  "\")\"",
  "\"||\"",
  "\"&&\"",
  "\"==\"",
  "\"!=\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"!\"",
  "$start",
  "Expressions",
  "Terminator",
  "ExpressionList",
  "Expression",
  "Literal",
  "Call",
  "Operator",
  "Assign",
  "Function",
  "If",
  "Arguments",
  "ArgList",
  "Parameters",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 30)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 31)
  def _reduce_2(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 32)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 36)
  def _reduce_4(val, _values, result)
     result = [ val[0] ] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 37)
  def _reduce_5(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 39)
  def _reduce_6(val, _values, result)
     result = val[0] 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

module_eval(<<'.,.,', 'grammar.y', 55)
  def _reduce_15(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 60)
  def _reduce_16(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 61)
  def _reduce_17(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_18(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 63)
  def _reduce_19(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 64)
  def _reduce_20(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 70)
  def _reduce_21(val, _values, result)
     result = CallNode.new(nil, val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 73)
  def _reduce_22(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 77)
  def _reduce_23(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 78)
  def _reduce_24(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 79)
  def _reduce_25(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 83)
  def _reduce_26(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 84)
  def _reduce_27(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 89)
  def _reduce_28(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_29(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_30(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_31(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_32(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 95)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 99)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 100)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 101)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 104)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[1], val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 109)
  def _reduce_41(val, _values, result)
     result = AssignNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 115)
  def _reduce_42(val, _values, result)
     result = FunctionNode.new(val[1], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 119)
  def _reduce_43(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_44(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 121)
  def _reduce_45(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 125)
  def _reduce_46(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 126)
  def _reduce_47(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 132)
  def _reduce_48(val, _values, result)
     result = IfNode.new(val[1], val[3], nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 137)
  def _reduce_49(val, _values, result)
     result = IfNode.new(val[1], val[3], val[6]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
