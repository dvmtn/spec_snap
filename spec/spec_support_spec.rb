require "spec_helper"

RSpec.describe SpecSupport do
  it "has a version number" do
    expect(SpecSupport::VERSION).not_to be nil
  end
end
