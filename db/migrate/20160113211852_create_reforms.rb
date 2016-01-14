class CreateReforms < ActiveRecord::Migration
  def change
    create_table :reforms do |t|
      t.string :client
      t.text :description
      #t.integer :number
      #t.date :closed
      t.timestamps null: false
    end
  end
end
