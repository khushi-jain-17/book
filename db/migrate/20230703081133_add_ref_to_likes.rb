class AddRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :user, null: false, foreign_key: true
    add_reference :likes, :fiction, null: false, foreign_key: true
  end
end
