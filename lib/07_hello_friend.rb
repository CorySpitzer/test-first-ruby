class Friend
  def greeting(name='')
    # One line
    name == '' ? "Hello!" : "Hello, #{name}!"
    
    # Long Form
    #if name == ''
        #"Hello!"
    #else
        #"Hello, #{name}!"
    #end
  end  
end
