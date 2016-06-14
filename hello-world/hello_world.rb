class HelloWorld

  def hello(name)
    if name != ''
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end

end

HelloWorld = HelloWorld.new
