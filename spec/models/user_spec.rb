# frozen_string_literal: true

require "spec_helper"

RSpec.describe User, type: :model do
  describe "#create" do
    context "sign up" do
      before do
        @user = User.create!(
          # type: "", # TODO: update after changing User class to STI.
          email: Faker::Internet.email,
          name: Faker::Name.name,
          password: Faker::Internet.password,
        )
      end

      it "returns true" do
        expect(@user).to be_a(User)
      end
    end
  end
end
