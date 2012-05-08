class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :permalink
      t.text :body
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
