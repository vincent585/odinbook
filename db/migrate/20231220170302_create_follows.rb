class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.boolean :accepted
      t.bigint :followed_id, foreign_key: true
      t.bigint :follower_id, foreign_key: true

      t.timestamps
    end
  end
end
