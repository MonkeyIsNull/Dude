class DudeMethod
  def initialize(params, body)
    @params = params
    @body = body
  end
  
  def call(receiver, arguments)
    context = DudeContext.new(receiver)
    @params.each_with_index do |param, index|
      context.locals[param] = arguments[index]
    end
    
    @body.eval(context)
  end
end
