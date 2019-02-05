class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :number
      t.string :origin
      t.string :destination
      t.date   :date
      t.references :airplane, foreign_key:true

      t.timestamps
    end
  end
end
