desc 'Add user'
arg_name 'Describe arguments to test here'
command :user do |c|
  c.desc 'User id'
  c.arg_name 'User id'
  c.flag [:u,'username']

  c.desc 'List'
  c.command :list do |list|
    list.action do |global_options,options,args|
      puts "Execute user list command"
    end
  end

  c.desc 'Add'
  c.command :add do |cmd|
    cmd.desc 'User key'
    cmd.arg_name 'User key'
    cmd.flag ['k','key']

    cmd.action do |global_options,options,args|
      puts "Execute user add command"
    end
  end

  c.desc 'Remove'
  c.command :rm do |cmd|
    cmd.desc 'User key'
    cmd.arg_name 'User key'
    cmd.flag ['k','key']

    cmd.action do |global_options,options,args|
      puts "Execute user add command"
    end
  end

  c.desc 'Modify'
  c.command :mdf do |cmd|

    cmd.desc "Modify key"
    cmd.command 'key' do |scmd|
      scmd.desc 'Old User key'
      scmd.arg_name 'Old key'
      scmd.flag ['o','old-key']

      scmd.desc 'New User key'
      scmd.arg_name 'New key'
      scmd.flag ['n','new-key']

      scmd.action do |global_options,options,args|
        puts "Execute user modify key command"
      end
    end

    cmd.desc "Modify repository access"
    cmd.command 'permission' do |scmd|
      scmd.desc 'Repository'
      scmd.arg_name 'Repository'
      scmd.flag ['r','repository']

      scmd.desc 'Repository path'
      scmd.arg_name 'Path'
      scmd.default_value '/'
      scmd.flag ['p','path']

      scmd.desc 'Repository Access'
      scmd.arg_name 'Access'
      scmd.default_value 'R'
      scmd.flag ['a','access']

      scmd.action do |global_options,options,args|
        puts "Execute user modify permission command"
      end
    end


    cmd.desc 'User key'
    cmd.arg_name 'User key'
    cmd.flag ['k','key']

    cmd.desc 'User key'
    cmd.arg_name 'User key'
    cmd.flag ['k','key']

    cmd.action do |global_options,options,args|
      puts "Execute user remove command"
    end
  end

  # Default action
  c.action do |global_options,options,args|
    puts "test command ran"
  end
end
