class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :description
      t.string :likes
      t.string :dislikes

      t.timestamps
    end
  end
end
