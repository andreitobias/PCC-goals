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
class Category < ApplicationRecord
  has_many :events
end
