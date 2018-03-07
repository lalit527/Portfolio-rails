class ChangeDefaultStatusBlogs < ActiveRecord::Migration[5.1]
  def change
    change_column_default :blogs, :status,  0
  end
end
