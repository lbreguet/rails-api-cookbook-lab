# frozen_string_literal: true

class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true
  validates :unit, presence: true
end
