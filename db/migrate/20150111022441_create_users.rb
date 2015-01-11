class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :text
      t.string :name
      t.string :text
      t.string :password_digest
      t.string :string

      t.timestamps null: false
    end
  end
end
