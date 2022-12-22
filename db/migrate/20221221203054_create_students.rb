class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :school, null: false, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
