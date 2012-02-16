class Nodes < Struct.new(:nodes); end

class LiteralNode < Struct.new(:value); end
class NumberNode  < LiteralNode; end
class StringNode  < LiteralNode; end
class TrueNode    < LiteralNode
  def initialize
    super(true)
  end
end

class False < LiteralNode
  def initialize
    super(false)
  end
end

class NullNode < LiteralNode
  def initialize
    super(nil)
  end
end

class CallNode < Struct.new(:receiver, :method, :arguments); end
class AssignNode < Struct.new(:name, :value); end
class FunctionNode < Struct.new(:name, :params, :body); end
class IfNode  < Struct.new(:condition, :body, :else_body); end

