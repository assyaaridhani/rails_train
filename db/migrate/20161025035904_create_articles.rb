class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
        
      t.timestamps
    end
  end
end

class AddStatusToArticles < ActiveRecord::Migration
    def change
        add_column :articles, :status, :string
        add_column :articles, :status_two, :string
    end
end

class RemoveStatusFromArticles < ActiveRecord::Migration
    def change
        remove_column :articles, :status
    end
end

class RenameStatusToStatusTwoFromArticles < ActiveRecord::Migration
    def change
        rename_column :articles, :status, :status_two
    end
end

class ChangeStatusFromArticles < ActiveRecord::Migration
    def change
            change_column :articles, :status, :integer
    end
end

class RenameArticlesToNews < ActiveRecord::Migration
    def change
        rename_table :articles, :news
    end
end

class DeleteNews < ActiveRecord::Migration
    def change
        drop_table:news
    end
end



