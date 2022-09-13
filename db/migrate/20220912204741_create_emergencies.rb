class CreateEmergencies < ActiveRecord::Migration[7.0]
  def change
    create_table :emergencies do |t|
      t.string :description
      t.string :address
      t.references :emergency_type, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
