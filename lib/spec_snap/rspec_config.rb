# frozen_string_literal: true

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.mock_with :rspec { |mocks| mocks.verify_partial_doubles = true }
  config.order = :random
  Kernel.srand config.seed
end
