require "parser"
require "runtime"

class Interpreter
  def initialize
    @parser = Parser.new
  end
  
  def eval(code)
    @parser.parse(code).eval(Runtime)
  end
end

class Nodes
  # This method is the "interpreter" part of our language. All nodes know how to eval 
  # itself and returns the result of its evaluation by implementing the "eval" method.
  # The "context" variable is the environment in which the node is evaluated (local
  # variables, current class, etc.).
  def eval(context)
    return_value = nil
    nodes.each do |node|
      return_value = node.eval(context)
    end
    return_value || Runtime["null"]
  end
end

class NumberNode
  def eval(context)
    Runtime["Number"].new_with_value(value)
  end
end

class StringNode
  def eval(context)
    Runtime["String"].new_with_value(value)
  end
end

class TrueNode
  def eval(context)
    Runtime["true"]
  end
end

class FalseNode
  def eval(context)
    Runtime["false"]
  end
end

class NullNode
  def eval(context)
    Runtime["null"]
  end
end

class AssignNode
  def eval(context)
    context.locals[name] = value.eval(context)
  end
end

class CallNode
  def eval(context)
    # a
    if receiver.nil? && arguments.empty? && context.locals[method]
      context.locals[method]
    
    # Calling a method
    else
      # object.method
      if receiver
        value = receiver.eval(context)
      else
        # print(...)
        value = context.current_self
      end
      
      evaluated_arguments = arguments.collect { |arg| arg.eval(context) }
      value.call(method, evaluated_arguments)
      
    end
  end
end

class FunctionNode
  def eval(context)
    method = DudeMethod.new(params, body)
    context.current_class.runtime_methods[name] = method
  end
end


class IfNode
  def eval(context)
    ### Exercise
    # Here you have access to:
    #  condition: condition node that will determine if the body should be executed
    #       body: node to be executed if the condition is true
    #  else_body: node to be executed if the condition is false
    if condition.eval(context).ruby_value
      body.eval(context)
    elsif else_body
      else_body.eval(context)
    else
      Runtime["null"]
    end
  end
end
