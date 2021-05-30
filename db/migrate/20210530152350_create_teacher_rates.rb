class CreateTeacherRates < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_rates do |t|
      t.string :email
      t.string :rated_email
      t.integer :rate

      t.timestamps
    end
    add_index :teacher_rates, :rated_email
  end
end
