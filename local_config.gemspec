# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{local_config}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mathieu Martin"]
  s.date = %q{2009-06-03}
  s.email = %q{webmat@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/local_config.rb", "test/local_config_test.rb", "test/test_helper.rb", "test/test_rails_root", "test/test_rails_root/config", "test/test_rails_root/config/no_env.yml", "test/test_rails_root/config/no_env_no_hash.yml", "test/test_rails_root/config/with_local.local.yml", "test/test_rails_root/config/with_local.yml", "test/test_rails_root/config/without_local.yml", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/webmat/local_config}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Micro plugin to solve a micro problem: loading  either your .local.yml config file if it's there, or the official .yml otherwise.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
