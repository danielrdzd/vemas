class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :phone
      t.string :address
      t.boolean :sex

      t.timestamps
    end
  end
end
