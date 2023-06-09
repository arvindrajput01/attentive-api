# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
