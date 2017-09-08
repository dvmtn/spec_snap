# frozen_string_literal: true

require 'simplecov'

if ENV['CIRCLE_ARTIFACTS']
  dir = File.join(ENV['CIRCLE_ARTIFACTS'], 'coverage')
  SimpleCov.coverage_dir(dir)
else
  SimpleCov.coverage_dir 'log/coverage/spec'
end

SimpleCov.minimum_coverage ENV['COVERAGE_PERCENT']
SimpleCov.refuse_coverage_drop

unless ENV['NO_COVERAGE']
  SimpleCov.start 'rails' do
    add_group 'Collaborators',     'app/collaborators'
    add_group 'Creators',          'app/creators'
    add_group 'Policies',          'app/policies'
    add_group 'Presenters',        'app/presenters'
    add_group 'Queriers',          'app/queriers'
    add_group 'Report Generators', 'app/report_generators'
    add_group 'Services',          'app/services'
    add_group 'Workers',           'app/workers'

    add_filter 'vendor/'
  end
end
