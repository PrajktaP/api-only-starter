# frozen_string_literal: true

class Tag < ApplicationRecord
  validates :name, uniqueness: { scope: :tag_type }, presence: true
  validates :tag_type, presence: true
  validates :description, presence: true
end
