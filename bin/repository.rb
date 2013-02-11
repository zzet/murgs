desc 'Describe test here'
arg_name 'Describe arguments to test here'
command :test do |c|
  c.action do |global_options,options,args|
    puts "test command ran"
  end
end
