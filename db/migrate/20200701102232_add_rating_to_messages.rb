class AddRatingToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :rating, :integer
  end
end
