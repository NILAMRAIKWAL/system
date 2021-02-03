class CreateUsersses < ActiveRecord::Migration[5.2]
  def change
    create_table :usersses do |t|
      t.string :name
      t.bigint :mobile
      t.string :email
      t.string :password_digest
      t.string :address

      t.timestamps
    end
    add_index :usersses, :email, unique: true
  end
end
