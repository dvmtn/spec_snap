# frozen_string_literal: true

module FeatureLoginHelper

  class Login
    include Warden::Test::Helpers
  end

  def logged_in_as(user)
    Login.new.login_as user, scope: :user, run_callbacks: false
  end

end
