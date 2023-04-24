class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name,  null: false
      t.string :email,       null: false, unique: true
      t.string :password,    null: false
      t.string :contact

      t.timestamps
    end
  end
end