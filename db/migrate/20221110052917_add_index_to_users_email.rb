class AddIndexToUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :email , unique: true
    #usersテーブルのemailカラムにインデックスを追加するためにadd_indexメソッドを用いている
    # インデックス自体は一意性を強制しないが unique :true とすることに，一意となる
  end
end
