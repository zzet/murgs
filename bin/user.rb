desc 'Add user'
arg_name 'Describe arguments to test here'
command :user do |c|
  c.desc 'User id'
  c.arg_name 'User id'
  c.flag [:u,'user-id']

  c.desc 'List'
  c.command :list do |list|
    list.action do |global_options,options,args|
      puts "Execute user list command"
    end
  end

  c.desc 'Add'
  c.command :add do |add|
    add.desc 'User key'
    add.arg_name 'User key'
    add.flag [:k,'key']


    add.action do |global_options,options,args|
      puts "Execute user add command"
    end
  end

  c.desc 'Remove'
  c.command :remove do |remove|
    remove.action do |global_options,options,args|
      puts "Execute user remove command"
    end
  end

  # Default action
  c.action do |global_options,options,args|
    puts "test command ran"
  end
end
