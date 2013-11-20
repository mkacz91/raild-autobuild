class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.belongs_to :build, index: true
      t.string :title
      t.text :output
      t.integer :exit_code
    end
  end
end
