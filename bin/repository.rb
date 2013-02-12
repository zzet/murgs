desc 'Manage repositories'
arg_name 'Describe arguments to test here'
command :repository do |c|

  c.desc 'List'
  c.command 'list' do |list|
    list.action do |global_options,options,args|
      puts "Execute repository list command"
    end
  end

  c.desc 'Add new repository'
  c.command 'add' do |cmd|
    cmd.desc 'Repository name'
    cmd.arg_name 'Name'
    cmd.flag ['r', 'repository']

    cmd.desc 'Repository path relative repository root'
    cmd.arg_name 'Path'
    cmd.default_value '/'
    cmd.flag ['p', 'path']

    cmd.action do |global_options,options,args|
      puts "Execute repository add command"
    end
  end

  c.desc 'Remove repository'
  c.command 'rm' do |cmd|
    cmd.desc 'Repository name'
    cmd.arg_name 'Name'
    cmd.flag ['r', 'repository']

    cmd.desc 'Repository path relative repository root'
    cmd.arg_name 'Path'
    cmd.default_value '/'
    cmd.flag ['p', 'path']

    cmd.action do |global_options,options,args|
      puts "Execute repository add command"
    end
  end

  c.desc 'Copy repository'
  c.command 'cp' do |cmd|
    cmd.desc 'Repository name'
    cmd.arg_name 'Name'
    cmd.flag ['r', 'repository']

    cmd.desc 'Source repository path relative repository root'
    cmd.arg_name 'Source'
    cmd.default_value '/'
    cmd.flag ['s', 'source']

    cmd.desc 'Destination repository path relative repository root'
    cmd.default_value '/'
    cmd.arg_name 'Destination'
    cmd.flag ['d', 'destination']

    cmd.action do |global_options,options,args|
      puts "Execute repository add command"
    end
  end

  c.desc 'Move repository'
  c.command 'mv' do |cmd|
    cmd.desc 'Repository name'
    cmd.arg_name 'Name'
    cmd.flag ['r', 'repository']

    cmd.desc 'Old repository path relative repository root'
    cmd.arg_name 'Source'
    cmd.default_value '/'
    cmd.flag ['s', 'source']

    cmd.desc 'Old repository path relative repository root'
    cmd.default_value '/'
    cmd.arg_name 'Destination'
    cmd.flag ['d', 'destination']

    cmd.action do |global_options,options,args|
      puts "Execute repository add command"
    end
  end

  c.desc 'Import repository'
  c.command 'import' do |cmd|
    cmd.desc 'Repository name'
    cmd.arg_name 'Name'
    cmd.flag ['r', 'repository']

    cmd.desc 'Repository path relative repository root'
    cmd.arg_name 'Path'
    cmd.default_value '/'
    cmd.flag ['p', 'path']

    cmd.desc 'Original repository source'
    cmd.arg_name 'Source'
    cmd.flag ['s', 'source']

    cmd.action do |global_options,options,args|
      puts "Execute repository add command"
    end
  end

  # Default command
  c.action do |global_options,options,args|
    puts "test command ran"
  end
end
