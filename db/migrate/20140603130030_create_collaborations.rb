class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.string :name
      t.string :email
      t.string :company
      t.integer :phone
      t.string :city
      t.string :country
      t.text :message

      t.timestamps
    end
  end
end
