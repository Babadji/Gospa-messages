class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
