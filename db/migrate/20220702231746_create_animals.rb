class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :age, :integer
      t.column :breed, :string
    end
  end
end
