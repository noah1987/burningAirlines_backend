class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin, :default => false
      t.text :password_digest
      t.text :email


      t.timestamps
    end
  end
end
