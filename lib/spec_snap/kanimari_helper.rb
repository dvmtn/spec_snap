# frozen_string_literal: true

require 'Kaminari'

RSpec.configure do |config|
  config.around(:example, :pagination_set_to_one) do |test|
    original_per_page = Kaminari.config.default_per_page
    Kaminari.config.default_per_page = 1
    test.run
    Kaminari.config.default_per_page = original_per_page
  end
end
