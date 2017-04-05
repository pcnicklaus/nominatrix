class CreateNomination < ActiveRecord::Migration[5.0]
  def change
    create_table :nominations do |t|
        t.string    :first_name, :limit => 30, :null => false
        t.string    :last_name, :limit => 30, :null => false
        t.string    :nominated_for, :null => false
        t.string    :email_address
        t.string    :image, :limit => 2.megabytes
        t.string    :city, :null => false
        t.string    :state, :null => false
        t.text      :description, :null => false
        t.boolean   :is_user
        t.string    :nominator_user_id, :null => false
        t.string    :nominator_relationship
        t.timestamps
    end

    create_table :votes do |v|
        v.references :user, :null => false
        v.references :nominations, :null => false
        v.timestamps
    end

  end
end
