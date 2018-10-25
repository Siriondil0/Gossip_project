class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :sender, index: true
      t.text :content
      t.datetime :date
      t.timestamps
    end
  end
end
