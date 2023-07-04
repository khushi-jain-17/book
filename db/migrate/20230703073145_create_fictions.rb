class CreateFictions < ActiveRecord::Migration[7.0]
  def change
    create_table :fictions do |t|
      t.string :name

      t.timestamps
    end
  end
end
