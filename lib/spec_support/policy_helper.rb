# frozen_string_literal: true

require 'tableware'
require 'pundit'

def test_policy_table permission_matrix, klass = nil, policy_object_defined: false
  Tableware.hashes(permission_matrix).each do |perms|
    action = "#{perms[:action]}?".to_sym
    roles = User::ROLES.map(&:to_sym)

    permissions action do
      roles.each do |role|
        allowed = perms[role] == 'yes'
        user = User.new(role: role)

        unless policy_object_defined
          let(:policy_object) { klass.nil? ? nil : klass.new }
        end

        it "#{allowed ? 'allows' : 'denies'} access to #{role} users" do
          if allowed
            expect(described_class).to permit(user, policy_object)
          else
            expect(described_class).to_not permit(user, policy_object)
          end
        end
      end
    end
  end
end
