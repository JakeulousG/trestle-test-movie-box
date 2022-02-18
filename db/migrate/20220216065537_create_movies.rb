class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :status
      t.date :premiere_date

      t.timestamps
    end
  end
end
