class Image < ApplicationRecord
  # Associations
  belongs_to :user

  # Active Storage Attachment
  has_one_attached :source

  # Scopes
  scope :public_images, -> { where(is_public: true) }
end
