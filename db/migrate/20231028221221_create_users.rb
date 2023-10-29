class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:users)
      create_table :users do |t|
        t.string :uid
        t.string :pass
    
        t.timestamps
      end
      add_index :users, :uid, unique: true
    end
  end
end
