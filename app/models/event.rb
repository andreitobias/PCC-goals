# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  date        :datetime
#  description :string
#  id          :bigint           not null, primary key
#  location    :string
#  title       :string
#  type        :string
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_events_on_category_id  (category_id)
#  index_events_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#
class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  belongs_to :category
end
