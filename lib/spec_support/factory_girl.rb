# frozen_string_literal: true

require 'factory_girl_rails'

module FactoryGirl
  module Syntax
    module Methods
      alias create_large_list create_list

      def create_list(name, amount, *traits_and_overrides, &block)
        unless small_amount_or_special_build?(amount)
          raise ArgumentError, "You asked to create #{amount} records. For the sake of test speed (and sanity), don't do this."
        end

        create_large_list(name, amount, *traits_and_overrides, &block)
      end

      private def small_amount_or_special_build? amount
        amount < 3 || ENV['NIGHTLY'] || ENV['CI']
      end
    end
  end
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
