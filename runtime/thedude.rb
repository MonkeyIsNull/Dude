class TheDude
  attr_accessor :runtime_class, :ruby_value

  def initialize(runtime_class, ruby_value=self)
    @runtime_class = runtime_class
    @ruby_value = ruby_value
  end 

  # Call a method on the object.
  def call(method, arguments=[])
    @runtime_class.lookup(method).call(self, arguments) 
  end 
end

