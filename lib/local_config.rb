require 'yaml'

module LocalConfig
  def self.load_config(name, options={})
    environment = options.has_key?(:environment) ? options[:environment] : true

    personal_config_file  = "#{RAILS_ROOT}/config/#{name}.local.yml"
    shared_config_file    = "#{RAILS_ROOT}/config/#{name}.yml"
    config_file = File.exists?(personal_config_file) ? personal_config_file : shared_config_file

    config = HashWithIndifferentAccess.new YAML.load(File.read(config_file))
    environment ? config[RAILS_ENV] : config
  end
end
