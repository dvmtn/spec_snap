# frozen_string_literal: true

module ControllerHelper

  def sign_in(user)
    if user.nil?
      not_signed_in
    else
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)
    end
  end

  def not_signed_in
    allow(request.env['warden']).to receive(:authenticate!).and_throw(:warden, {:scope => :user})
    allow(controller).to receive(:current_user).and_return(nil)
  end

  RSpec.configure do |config|
    config.include self, type: :controller
  end

end
