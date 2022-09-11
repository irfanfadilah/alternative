class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :website
      t.string :message
      t.string :identifier

      t.timestamps
    end
    add_index :posts, :identifier
  end
end
