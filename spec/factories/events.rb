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
FactoryBot.define do
  factory :event do
    type { '' }
    title { 'MyString' }
    description { 'MyString' }
    date { '2023-07-24 20:34:56' }
    location { 'MyString' }
  end
end
