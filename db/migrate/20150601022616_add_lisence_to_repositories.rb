# frozen_string_literal: true

class AddLisenceToRepositories < ActiveRecord::Migration
  def change
    add_column :repositories, :license, :string
  end
end
