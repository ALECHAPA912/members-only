class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.text :body, null: false, default: ""
      t.timestamps
    end

    add_reference :posts, :user, null: false, foreign_key: true
  end
end
