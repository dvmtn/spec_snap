# frozen_string_literal: true

module RequiredSeeds
  def self.populate(seeds)
    Array(seeds).each { |seed| load Rails.root.join('db', 'seeds', "#{seed}.rb") }
  end
end
