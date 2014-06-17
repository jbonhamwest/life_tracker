class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :year_started
      t.integer :year_ended
      t.string :school_name

      t.timestamps
    end
  end
end
