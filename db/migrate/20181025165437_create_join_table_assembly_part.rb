class CreateJoinTableAssemblyPart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts do |t|
      t.references :assembly, foreign_key: true
      t.references :part, foreign_key: true
    end
  end
end
