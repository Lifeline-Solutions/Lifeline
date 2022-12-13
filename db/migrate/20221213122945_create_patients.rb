class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :image
      t.string :national_id
      t.string :gender

      t.timestamps
    end
  end
end
