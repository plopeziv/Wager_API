class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :gameId
      t.string :teamOne
      t.string :teamTwo
      t.float :gameSpread
      t.boolean :status
      t.integer :scoreDiff

      t.timestamps
    end
  end
end
