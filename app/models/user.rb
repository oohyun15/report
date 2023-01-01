# frozen_string_literal: true

class User < ApplicationRecord
  # constant variables
  AUTH_TOKEN_LENGTH = 32

  # callbacks
  before_create :generate_auth_token
  # TODO: crypt password before save

  private

  # callback methods

  def generate_auth_token
    loop do
      token = SecureRandom.alphanumeric(AUTH_TOKEN_LENGTH)
      next if User.exists?(auth_token: token)

      self.auth_token = token
      break
    end
  end
end
