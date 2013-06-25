class CreateQuestionaire < ActiveRecord::Migration
  def up
  	create_table :questionaires do |t|
      t.string :gender
      t.string :profession
      t.integer :age
      t.string :city
      t.string :graduation
      t.integer :year_apprenticeship
      t.boolean :first_apprenticeship
      t.string :subsistence
      t.integer :gross_salary
      t.integer :number_applications
      t.string :found_apprenticeship
      t.string :internet_portal
      t.string :known_portals
      t.string :different_professions
      t.boolean :dream_job
      t.string :different_dream_job
      t.string :reason_apprenticeship
      t.boolean :canceled_apprenticeship
      t.string :canceled_job
      t.string :reason_canceled_apprenticeship
      t.string :annoying_apprenticeship
      t.string :organization_or_school
      t.boolean :school_like
      t.boolean :organization_like
      t.boolean :profession_like

      t.timestamps
    end
  end

  def down
  	drop_table :questionaires
  end
end
