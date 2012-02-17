require "test/unit"
require "lexer"

def test_tokens
  code = <<-CODE
            function method
              "hi"
               1
            end
  CODE
  tokens = [ 
    [:FUNCTION, "function"], [:IDENTIFIER, "method"], [:NEWLINE, "\n"],
    [:STRING, "hi"], [:NEWLINE, "\n"],
    [:NUMBER, 1], [:NEWLINE, "\n"],
    [:END, "end"], [:NEWLINE, "\n"]
  ]
   
    rval = Lexer.new.run(code)
    rval.each do |r| 
      puts r
    end 
   if tokens != Lexer.new.run(code)
     puts("Fueck")
   else
     puts("Good to go")
   end
end 

test_tokens()

