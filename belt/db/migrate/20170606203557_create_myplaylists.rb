class CreateMyplaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :myplaylists do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
