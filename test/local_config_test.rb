require 'test_helper'

class LocalConfigTest < Test::Unit::TestCase
  context "with RAILS_ENV set to 'development'" do
    setup do
      silence_warnings { ::RAILS_ENV = 'development' }
    end

    context "in the general case" do
      setup do
        @config = LocalConfig.load_config('without_local')
      end

      should "return the content of the hash for the current environment" do
        assert !@config.has_key?(:development)
      end

      should "return a Rails' HashWithIndifferentAccess, for convenience's sake" do
        assert_equal HashWithIndifferentAccess, @config.class
      end
    end

    context "reading with_local.yml" do
      setup do
        @config = LocalConfig.load_config('with_local')
      end

      should "return the values of the .local file" do
        assert_equal 'local value', @config[:param]
      end
    end

    context "reading without_local.yml" do
      setup do
        @config = LocalConfig.load_config('without_local')
      end

      should "return the values of the .yml file" do
        assert_equal 'never overridden', @config[:param]
      end
    end
  end

  context "reading no_env_ho_hash.yml which contains an array rather than a hash" do
    setup do
      @config = LocalConfig.load_config('no_env_no_hash', :environment => false)
    end

    should "load the array as is" do
      assert_equal ['string 1 of the array', 'another string'], @config, @config.inspect
    end
  end

  context "reading no_env.yml" do
    setup do
      @config = LocalConfig.load_config('no_env', :environment => false)
    end

    should "return the values of the .yml file" do
      assert_equal 'value', @config[:param], @config.inspect
    end
  end
end
