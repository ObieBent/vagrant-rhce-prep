require "yaml"
require "erb"

def render_ssh_config(servers,default_user,ssh_full_key_path, template_path)
  template_str = File.read(template_path)
  template = ERB.new(template_str, trim_mode: '-')
  return template.result(binding)
end


configuration = YAML.load_file "configuration.yaml"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

# Variables
VAGRANT_API_VERSION = configuration['vagrant_api_version']
host_os = configuration['host_os']
default_user = configuration['default_user']
default_user_password = configuration['default_user_password']
servers = configuration['servers']
add_user_script = configuration['shell_scripts']['add_default_user']['script_path']
copy_ssh_pub_script = configuration['shell_scripts']['copy_ssh_pub']['script_path']
ssh_pub_key = configuration['ssh_key']
ssh_conf_template_path = configuration['ssh_conf_file']['path']
ssh_configs_fullpath_destination = configuration['ssh_conf_file']['destination_full_path']

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  servers.each do |type, machines|
    machines.each do |name, specs|
      puts "SERVER: #{name}"
      config.vm.define name do |machine|
        puts "CONF: #{name} #{host_os} #{specs}"
        machine.vm.box = host_os
        machine.vm.hostname = name
        machine.vm.network "private_network", ip: specs['ip']
        machine.vm.provider "libvirt" do |virt|
          virt.memory = specs['memory']
          virt.cpus = specs['cpus']
          virt.driver = "qemu"
          virt.features = []
          virt.inputs = []
          virt.machine_type = "virt"
          virt.cpu_mode = "custom"
          virt.cpu_model = "host"
          virt.cpu_fallback = 'forbid'
        end

        machine.vm.provision "shell", path: add_user_script, name: "Add default user on system", env: {"USER_NAME" => default_user, "USER_PW" => default_user_password }

        if ssh_pub_key['copy_ssh_pub_key']
          machine.vm.provision "file", source: "#{ssh_pub_key['pub_key_path']}#{ssh_pub_key['pub_key_name']}", destination: "#{ssh_pub_key['pub_key_destination']}#{ssh_pub_key['pub_key_name']}"

          machine.vm.provision "shell", path: copy_ssh_pub_script, name: "Copy pub key on folder in server to a given user .ssh folder", env: {"USER_NAME" => default_user, "SSH_PUB_FILE_ORIGIN_PATH" => ssh_pub_key['pub_key_destination'], "SSH_PUB_FILE_NAME" => ssh_pub_key['pub_key_name']}
        end

      end
    end
  end

  ssh_full_key_path = "#{ssh_pub_key['pub_key_path']}#{ssh_pub_key['key_name']}"
  ssh_config = render_ssh_config(servers, default_user, ssh_full_key_path, ssh_conf_template_path)
  puts ssh_config

  File.open(ssh_configs_fullpath_destination, "w") do |file|
    file.write(ssh_config)
  end
end
