class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
  end
end
