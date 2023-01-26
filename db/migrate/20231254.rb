class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :check
      t.datetime :start
      t.datetime :end
      t.string :content

      t.timestamps
    end
  end
end
