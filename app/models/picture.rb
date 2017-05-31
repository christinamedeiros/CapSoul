class Picture < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
  validates :memo, presence: true # Make sure the owner's memo is present.
end
