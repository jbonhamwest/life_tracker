class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.integer :date_of_event
      t.string :event_name

      t.timestamps
    end
  end
end
