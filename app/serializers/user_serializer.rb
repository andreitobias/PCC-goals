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
class UserSerializer < ApplicationSerializer
  attributes :id, :first_name, :last_name, :email
  attribute :message, if: :message

  has_one :tokens, if: :with_auth_tokens?

  def with_auth_tokens?
    instance_options[:with_auth_tokens]
  end

  def message
    instance_options[:with_message]
  end
end
