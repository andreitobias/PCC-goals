# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  created_at :datetime         not null
#  id         :bigint           not null, primary key
#  name       :string
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :category do
    name { 'MyString' }
  end
end
