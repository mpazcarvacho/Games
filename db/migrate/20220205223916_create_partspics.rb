class CreatePartspics < ActiveRecord::Migration[5.2]
  def change
    create_table :partspics do |t|
      t.string :name
      t.string :url
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
