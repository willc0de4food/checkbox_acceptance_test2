class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :signer_name
      t.boolean :agree_to_contract

      t.timestamps
    end
  end
end
