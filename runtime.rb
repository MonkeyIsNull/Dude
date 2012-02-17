require "runtime/thedude"
require "runtime/class"
require "runtime/method"
require "runtime/context"

# Bootstrap the runtime. This is where we assemble all the classes and objects together
# to form the runtime.

RuntimeClass = RClass.new                  # Class
RuntimeClass.runtime_class = RuntimeClass  # Class.class = Class
RuntimeObject = RClass.new                 # Object = Class.new
RuntimeObject.runtime_class = RuntimeClass # Object.class = Class

#RuntimeObject = TheDude.new(TheDude, TheDude)
#RuntimeObject.runtime_class = TheDude
Runtime = DudeContext.new(RuntimeObject.new) # self = Object.new

# The Dude is everywhere
Runtime["Class"]      = RuntimeClass
Runtime["TheDude"]    = RuntimeObject
Runtime["Number"]     = RClass.new
Runtime["String"]     = RClass.new
Runtime["TrueClass"]  = RClass.new
Runtime["FalseClass"] = RClass.new
Runtime["NullClass"]  = RClass.new

Runtime["true"]  = Runtime["TrueClass"].new_with_value(true)
Runtime["false"] = Runtime["FalseClass"].new_with_value(false)
Runtime["null"]  = Runtime["NullClass"].new_with_value(nil)

# Object.new
Runtime["Class"].function :new do |receiver, arguments|
  receiver.new
end

# print("hi")
Runtime["TheDude"].function :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Runtime["null"]
end

# 1 + 2
# 1.+(2)
Runtime["Number"].function :+ do |receiver, arguments|
  a = receiver.ruby_value
  b = arguments.first.ruby_value
  Runtime["Number"].new_with_value(a + b)
end
