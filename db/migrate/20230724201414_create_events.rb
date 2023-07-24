# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :title
      t.string :description
      t.datetime :date
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
