class AddDescriptionToLifeEvents < ActiveRecord::Migration
  def change
    change_table :life_events do |t|
      t.string :description
    end
  end
end
