class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :datetimeperformed
      t.decimal :hours

      t.timestamps null: false
    end
  end
end
