class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :movie_id
      t.integer :user_id
    end
  end
end
