# frozen_string_literal: true

class AddRecipeIdToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :recipe, index: true, foreign_key: true
  end
end
