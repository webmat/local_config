require 'rubygems'
require 'test/unit'
require 'shoulda'
gem 'mocha', '= 0.9.5'
require 'mocha'
require 'activesupport'

test_dir = File.dirname(__FILE__)

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(test_dir)
require 'local_config'

RAILS_ROOT = File.join test_dir, 'test_rails_root'

class Test::Unit::TestCase
end
