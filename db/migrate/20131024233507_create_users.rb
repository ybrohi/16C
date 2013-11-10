class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gender
      t.integer :yob
      t.string :claid
      t.string :lid
      t.integer :score
      t.string :karma
      t.string :password_digest

      t.timestamps
    end
  end
end
