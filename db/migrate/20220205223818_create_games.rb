class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :ages
      t.string :players

      t.timestamps
    end
  end
end
