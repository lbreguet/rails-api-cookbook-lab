# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients

  validates :name, presence: true
  validates :instruction, presence: true
end
