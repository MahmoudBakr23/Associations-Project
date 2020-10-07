class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
