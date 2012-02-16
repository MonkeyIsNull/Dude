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
     5,    22,    20,    21,    40,    14,    15,    16,    17,    18,
    19,    81,    25,    20,    47,     6,    45,     6,    13,    62,
    80,    66,    74,    25,     6,    36,    37,    25,    22,    13,
    21,     5,    14,    15,    16,    17,    18,    19,    43,    22,
    20,    21,    72,    14,    15,    16,    17,    18,    19,    41,
    70,    20,    40,    69,    82,     6,    13,    22,    83,    21,
    25,    14,    15,    16,    17,    18,    19,    13,    22,    20,
    21,     5,    14,    15,    16,    17,    18,    19,    79,    23,
    20,    78,    22,    86,    21,    13,    14,    15,    16,    17,
    18,    19,   nil,   nil,    20,     6,    13,    22,   nil,    21,
   nil,    14,    15,    16,    17,    18,    19,   nil,   nil,    20,
    13,    22,   nil,    21,   nil,    14,    15,    16,    17,    18,
    19,   nil,   nil,    20,    22,    13,    21,     5,    14,    15,
    16,    17,    18,    19,   nil,   nil,    20,   nil,    22,    13,
    21,   nil,    14,    15,    16,    17,    18,    19,   nil,   nil,
    20,     6,    13,    22,   nil,    21,     5,    14,    15,    16,
    17,    18,    19,   nil,   nil,    20,    13,    22,   nil,    21,
   nil,    14,    15,    16,    17,    18,    19,   nil,   nil,    20,
     6,    13,    22,   nil,    21,   nil,    14,    15,    16,    17,
    18,    19,   nil,   nil,    20,    13,    22,   nil,    21,   nil,
    14,    15,    16,    17,    18,    19,   nil,    22,    20,    21,
    13,    14,    15,    16,    17,    18,    19,   nil,   nil,    20,
   nil,    22,   nil,    21,    13,    14,    15,    16,    17,    18,
    19,   nil,    22,    20,    21,    13,    14,    15,    16,    17,
    18,    19,   nil,   nil,    20,   nil,    22,   nil,    21,    13,
    14,    15,    16,    17,    18,    19,   nil,    22,    20,    21,
    13,    14,    15,    16,    17,    18,    19,   nil,   nil,    20,
   nil,    22,   nil,    21,    13,    14,    15,    16,    17,    18,
    19,   nil,    22,    20,    21,    13,    14,    15,    16,    17,
    18,    19,   nil,   nil,    20,   nil,    22,   nil,    21,    13,
    14,    15,    16,    17,    18,    19,   nil,   nil,    20,    25,
    13,    36,    37,    34,    35,     5,    25,   nil,    36,    37,
    34,    35,   nil,    25,    13,    36,    37,    34,    35,    30,
    31,    32,    33,    28,    29,    27,    26,   nil,    25,     6,
    36,    37,    34,    35,    30,    31,    32,    33,    28,    29,
    27,    26,   nil,   nil,   nil,    25,    60,    36,    37,    34,
    35,    30,    31,    32,    33,    28,    29,    27,    26,    25,
   nil,    36,    37,    34,    35,    30,    31,    32,    33,    28,
    29,    27,    26,    25,   nil,    36,    37,    34,    35,    30,
    31,    32,    33,    28,    29,    27,    26,    25,   nil,    36,
    37,    34,    35,    30,    31,    32,    33,    28,    29,    27,
    26,    25,   nil,    36,    37,    34,    35,    30,    31,    32,
    33,    28,    29,    27,    26,    25,   nil,    36,    37,    34,
    35,    30,    31,    32,    33,    28,    29,    27,    25,   nil,
    36,    37,    34,    35,    30,    31,    32,    33,    28,    29,
    25,   nil,    36,    37,    34,    35,    30,    31,    32,    33,
    25,   nil,    36,    37,    34,    35,    30,    31,    32,    33,
    25,   nil,    36,    37,    34,    35,    25,   nil,    36,    37,
    34,    35,    25,   nil,    36,    37 ]

racc_action_check = [
    40,     3,    40,    81,    40,    40,    40,    40,    40,    40,
    65,    70,    40,    70,    47,    70,    70,    70,    70,    70,
    70,    75,    42,    70,    25,     3,    23,    81,    40,    40,
    75,    43,    66,    57,    65,    57,    57,    59,    67,    70,
    67,    67,    67,    67,    67,    67,    67,    67,    21,    41,
    67,    41,    66,    41,    41,    41,    41,    41,    41,    19,
    63,    41,    19,    63,    77,    67,    67,    13,    79,    13,
    58,    13,    13,    13,    13,    13,    13,    41,     0,    13,
     0,     0,     0,     0,     0,     0,     0,     0,    73,     1,
     0,    73,    20,    85,    20,    13,    20,    20,    20,    20,
    20,    20,   nil,   nil,    20,     0,     0,    37,   nil,    37,
   nil,    37,    37,    37,    37,    37,    37,   nil,   nil,    37,
    20,    22,   nil,    22,   nil,    22,    22,    22,    22,    22,
    22,   nil,   nil,    22,    71,    37,    71,    71,    71,    71,
    71,    71,    71,    71,   nil,   nil,    71,   nil,    24,    22,
    24,   nil,    24,    24,    24,    24,    24,    24,   nil,   nil,
    24,    71,    71,    84,   nil,    84,    84,    84,    84,    84,
    84,    84,    84,   nil,   nil,    84,    24,    26,   nil,    26,
   nil,    26,    26,    26,    26,    26,    26,   nil,   nil,    26,
    84,    84,    27,   nil,    27,   nil,    27,    27,    27,    27,
    27,    27,   nil,   nil,    27,    26,    28,   nil,    28,   nil,
    28,    28,    28,    28,    28,    28,   nil,    29,    28,    29,
    27,    29,    29,    29,    29,    29,    29,   nil,   nil,    29,
   nil,    36,   nil,    36,    28,    36,    36,    36,    36,    36,
    36,   nil,    31,    36,    31,    29,    31,    31,    31,    31,
    31,    31,   nil,   nil,    31,   nil,    32,   nil,    32,    36,
    32,    32,    32,    32,    32,    32,   nil,    33,    32,    33,
    31,    33,    33,    33,    33,    33,    33,   nil,   nil,    33,
   nil,    34,   nil,    34,    32,    34,    34,    34,    34,    34,
    34,   nil,    35,    34,    35,    33,    35,    35,    35,    35,
    35,    35,   nil,   nil,    35,   nil,    30,   nil,    30,    34,
    30,    30,    30,    30,    30,    30,   nil,   nil,    30,    55,
    35,    55,    55,    55,    55,    44,    53,   nil,    53,    53,
    53,    53,   nil,    44,    30,    44,    44,    44,    44,    44,
    44,    44,    44,    44,    44,    44,    44,   nil,    38,    44,
    38,    38,    38,    38,    38,    38,    38,    38,    38,    38,
    38,    38,   nil,   nil,   nil,    76,    38,    76,    76,    76,
    76,    76,    76,    76,    76,    76,    76,    76,    76,    61,
   nil,    61,    61,    61,    61,    61,    61,    61,    61,    61,
    61,    61,    61,     4,   nil,     4,     4,     4,     4,     4,
     4,     4,     4,     4,     4,     4,     4,    64,   nil,    64,
    64,    64,    64,    64,    64,    64,    64,    64,    64,    64,
    64,    46,   nil,    46,    46,    46,    46,    46,    46,    46,
    46,    46,    46,    46,    46,    48,   nil,    48,    48,    48,
    48,    48,    48,    48,    48,    48,    48,    48,    49,   nil,
    49,    49,    49,    49,    49,    49,    49,    49,    49,    49,
    51,   nil,    51,    51,    51,    51,    51,    51,    51,    51,
    50,   nil,    50,    50,    50,    50,    50,    50,    50,    50,
    52,   nil,    52,    52,    52,    52,    54,   nil,    54,    54,
    54,    54,    56,   nil,    56,    56 ]

racc_action_pointer = [
    76,    89,   nil,    -4,   380,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    65,   nil,   nil,   nil,   nil,   nil,    32,
    90,    37,   119,    26,   146,    13,   175,   190,   204,   215,
   304,   240,   254,   265,   279,   290,   229,   105,   335,   nil,
    -2,    47,     9,     1,   320,   nil,   408,   -16,   422,   435,
   457,   447,   467,   313,   473,   306,   479,    20,    57,    24,
   nil,   366,   nil,    32,   394,     5,    21,    36,   nil,   nil,
     9,   132,   nil,    60,   nil,    18,   352,    52,   nil,    57,
   nil,    -2,   nil,   nil,   161,    81,   nil ]

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
  0, 33, :_reduce_1,
  1, 33, :_reduce_2,
  1, 33, :_reduce_3,
  1, 35, :_reduce_4,
  3, 35, :_reduce_5,
  2, 35, :_reduce_6,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  3, 36, :_reduce_15,
  1, 37, :_reduce_16,
  1, 37, :_reduce_17,
  1, 37, :_reduce_18,
  1, 37, :_reduce_19,
  1, 37, :_reduce_20,
  2, 38, :_reduce_21,
  4, 38, :_reduce_22,
  0, 43, :_reduce_23,
  2, 43, :_reduce_24,
  3, 43, :_reduce_25,
  1, 44, :_reduce_26,
  3, 44, :_reduce_27,
  3, 39, :_reduce_28,
  3, 39, :_reduce_29,
  3, 39, :_reduce_30,
  3, 39, :_reduce_31,
  3, 39, :_reduce_32,
  3, 39, :_reduce_33,
  3, 39, :_reduce_34,
  3, 39, :_reduce_35,
  3, 39, :_reduce_36,
  3, 39, :_reduce_37,
  3, 39, :_reduce_38,
  3, 39, :_reduce_39,
  2, 39, :_reduce_40,
  3, 40, :_reduce_41,
  6, 41, :_reduce_42,
  0, 45, :_reduce_43,
  2, 45, :_reduce_44,
  3, 45, :_reduce_45,
  1, 46, :_reduce_46,
  3, 46, :_reduce_47,
  5, 42, :_reduce_48,
  8, 42, :_reduce_49 ]

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
  "!" => 14,
  "*" => 15,
  "/" => 16,
  "+" => 17,
  "-" => 18,
  ">" => 19,
  ">=" => 20,
  "<" => 21,
  "<=" => 22,
  "==" => 23,
  "!=" => 24,
  "&&" => 25,
  "||" => 26,
  "=" => 27,
  "," => 28,
  ";" => 29,
  "(" => 30,
  ")" => 31 }

racc_nt_base = 32

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
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\";\"",
  "\"(\"",
  "\")\"",
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
