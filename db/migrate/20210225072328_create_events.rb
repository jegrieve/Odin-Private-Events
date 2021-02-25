class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.string :description
      t.references :creator, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
