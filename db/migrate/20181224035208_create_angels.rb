class CreateAngels < ActiveRecord::Migration[5.1]
  def change
    create_table :angels do |t|
      t.string :name
      t.string :wings

      t.timestamps
    end
  end
end
