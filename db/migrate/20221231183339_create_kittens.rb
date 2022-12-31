class CreateKittens < ActiveRecord::Migration[7.0]
  def change
    create_table :kittens do |t|
      t.text :name
      t.text :age
      t.text :cuteness
      t.text :softness

      t.timestamps
    end
  end
end
