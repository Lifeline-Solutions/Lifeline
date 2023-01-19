class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string :doctor_comments
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
