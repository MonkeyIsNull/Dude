# rex tokens.rex -o lexer.rb

class Lexer 

rule
 [\s\t]+      # Whitespace is nothing 
 \#.*$        # Comment is nothing
 \\\\         # \\ is nothing either
 
 #Literals
 \d+          { [:NUMBER, text.to_i] }
 \"[^"]*\"    { [:STRING, text[1..-2]] }

 # Keywords
 end           { [:END, text] }
 function      { [:FUNCTION, text] }
 # No classes
 if                                    { [:IF, text] }
 else                                  { [:ELSE, text] }
 true                                  { [:TRUE, text] }
 false                                 { [:FALSE, text] }
 null                                  { [:NULL, text] }

 # No constants
 [a-z]\w*                              { [:IDENTIFIER, text] }
  
 # Special operators
  \|\|                                  { [text, text] }
  &&                                    { [text, text] }
  ==                                    { [text, text] }
  !=                                    { [text, text] }
  >=                                    { [text, text] }
  <=                                    { [text, text] }

  #catch all
  .                                     { [text, text] } # + => ["+", "+"]

inner
  def run(code)
    scan_setup(code)
    tokens = []
    while token = next_token
      tokens << token
    end
    tokens
  end
end

