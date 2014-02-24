class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :number
      t.string :name
      t.string :fname
      t.datetime :dob
      t.text :addr
      t.integer :photo
      t.text :lmark
      t.string :exname
      t.string :model

      t.timestamps
    end
  end
end
