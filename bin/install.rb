# Install Git server
# Simple doc herer
#
desc 'Install git server'
long_desc <<LDS
Install multiuser git server.
LDS

arg_name 'Describe arguments to install here'
command :install do |c|
  c.desc 'Describe a switch to install'
  c.switch :s

  c.desc 'Describe a flag to install'
  c.default_value 'default'
  c.flag :f

  c.desc 'System user'
  c.default_value 'git@localhost'
  c.arg_name 'System user'
  c.flag [:u,:user]

  c.desc 'Type of Key storage'
  c.default_value 'file'
  c.arg_name 'Key storage'
  c.flag [:t,'storage-type']

  c.desc 'Repository path'
  c.default_value '/var/git/repositories'
  c.arg_name 'Key storage'
  c.flag [:r,'repository-path']

  c.desc 'Config file'
  c.default_value '/var/git/murgs.yml'
  c.arg_name 'Config'
  c.flag [:c,'config']

  c.action do |global_options,options,args|

    # Your command logic here
     
    # If you have any errors, just raise them
    # raise "that command made no sense"

    puts "install command ran"
  end
end
