# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :repository, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
