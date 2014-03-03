class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_start
      t.text :description
      t.datetime :invite_start
      t.datetime :invite_end
      t.integer :member_min
      t.integer :member_max
      t.string :time_limit
      t.boolean :take_part
      t.boolean :public_list
      t.timestamps
    end
  end
end