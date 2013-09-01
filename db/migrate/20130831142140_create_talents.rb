class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :level, default: 0
    end
  end
end
