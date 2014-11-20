class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :comment_type
      t.string :text

      t.timestamps
    end
  end
end
