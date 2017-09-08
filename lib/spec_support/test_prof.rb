# frozen_string_literal: true

require 'active_support'
require 'test-prof'

TestProf.configure do |config|
  config.output_dir = 'tmp/test_prof'
  config.timestamps = true
  config.color = true
end
