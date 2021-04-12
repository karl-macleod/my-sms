class CreateTitles < ActiveRecord::Migration
  TITLES = %w[Miss, Mrs, Ms, Mr, Dr]

  def up
    # Create TITLES table.
    create_table :titles do |t|
      t.string :title, null: false, limit: 10

      t.timestamps
    end

    # Create unique index to prevent duplicate titles.
    add_index(:titles, :title, unique: true)

    # Import initial data
    TITLES.each do |t|
      Title.create(title: t)
    end
  end

  def down
    drop_table :titles
  end
end
