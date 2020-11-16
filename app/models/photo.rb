# frozen_string_literal: true

class Photo < ApplicationRecord
  belongs_to :repository
  belongs_to :proficient_project
  belongs_to :learning_module
  belongs_to :project_proposal

  has_one_attached :image
  validates :image, file_content_type: {
      allow: ['image/jpeg', 'image/png', 'image/gif', 'image/x-icon', 'image/svg+xml'],
      if: -> {image.attached?},
  }
end
