class CreateCourseRates < ActiveRecord::Migration[6.1]
  def change
    create_table :course_rates do |t|
      t.string :email
      t.string :course
      t.integer :rate

      t.timestamps
    end
    add_index :course_rates, :course
  end
end
