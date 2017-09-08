# frozen_string_literal: true

require 'fuubar'

RSpec.configure do |config|
  config.default_formatter = 'Fuubar'
  config.default_formatter = 'doc' if config.files_to_run.one?
  config.default_formatter = 'RspecJunitFormatter' if ENV['CI']
  config.example_status_persistence_file_path = 'log/rspec-run.log'

  config.fuubar_progress_bar_options = {
    format:        ' %c/%C |%w%i| %e ',
    progress_mark: '█',
  }
end
