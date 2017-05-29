class RenameResumesToPictures < ActiveRecord::Migration[5.1]
  def change
    rename_table :resumes, :pictures
  end
end
