# frozen_string_literal: true

# == Schema Information
#
# Table name: event_participants
#
#  created_at :datetime         not null
#  events_id  :bigint           not null
#  id         :bigint           not null, primary key
#  updated_at :datetime         not null
#  users_id   :bigint           not null
#
# Indexes
#
#  index_event_participants_on_events_id  (events_id)
#  index_event_participants_on_users_id   (users_id)
#
# Foreign Keys
#
#  fk_rails_...  (events_id => events.id)
#  fk_rails_...  (users_id => users.id)
#
class EventParticipant < ApplicationRecord
  belongs_to :events
  belongs_to :users
end
