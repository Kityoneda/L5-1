class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:users)
    create_table :likes do |t|
      t.integer :tweet_id
      t.integer :user_id

      t.timestamps
     end
    end
  end
end
