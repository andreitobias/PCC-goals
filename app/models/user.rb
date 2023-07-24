# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  created_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  id                     :bigint           not null, primary key
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  unconfirmed_email      :string
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  PASSWORD_COMPLEXITY_REGEXP = /(?=.*?\w)(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/

  devise :database_authenticatable, :rememberable, :validatable, :recoverable, :confirmable

  validates :first_name, :last_name, presence: true
  validate :password_complexity

  has_many :events, as: :organizer
  has_many :event_participants
  has_many :attended_events, through: :event_participants, source: :event

  class << self
    def authenticate(email, password)
      user = User.find_for_authentication(email:)
      user&.valid_password?(password) ? user : nil
    end
  end

  def tokens
    access_token = Doorkeeper::AccessToken.create!(
      resource_owner_id: id,
      expires_in: Doorkeeper.configuration.access_token_expires_in,
      use_refresh_token: Doorkeeper.configuration.refresh_token_enabled?
    )
    Doorkeeper::OAuth::TokenResponse.new(access_token).body.with_indifferent_access
  end

  private

    def password_complexity
      return if password.blank? || password =~ PASSWORD_COMPLEXITY_REGEXP

      errors.add :password, :complexity_not_met
    end
end
