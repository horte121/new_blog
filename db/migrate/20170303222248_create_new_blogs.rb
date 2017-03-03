class CreateNewBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :new_blogs do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
