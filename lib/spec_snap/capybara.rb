# frozen_string_literal: true

require 'rack_session_access/capybara'
require 'capybara/poltergeist'

Capybara.server_port = 3443
Capybara.app_host = 'https://localhost:3443'
Capybara.exact = true

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_options: ['--local-to-remote-url-access=yes'])
end

Capybara.register_driver :rack_test do |app|
  Capybara::RackTest::Driver.new(app, headers: { 'HTTP_USER_AGENT' => 'Capybara' })
end

Capybara.default_driver    = :rack_test
Capybara.javascript_driver = :poltergeist

module CapybaraHelper
  # By default, capybara will ignore all hidden fields. This lets us disable that temporarily.
  #
  # Example
  #
  #   include_hidden_fields do
  #     attach_file('hidden-input', 'spec/fixtures/files/file.jpg')
  #   end
  #
  def include_hidden_elemements
    Capybara.ignore_hidden_elements = false
    yield
    Capybara.ignore_hidden_elements = true
  end
end
