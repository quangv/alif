class CreateAlphabets < ActiveRecord::Migration
  def change
    create_table :alphabets do |t|
      t.string :name

      t.timestamps
    end
  end
end
