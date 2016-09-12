def da_nil?
  evaluation_result = yield if block_given?
  if evaluation_result.nil? or evaluation_result == ""
    # do something if the block was not given or the result is nil/empty
    puts "true"
  else
    # do something if the block was given and the result is non nil/empty
    puts evaluation_result
    puts "false"
  end
end

da_nil? { }