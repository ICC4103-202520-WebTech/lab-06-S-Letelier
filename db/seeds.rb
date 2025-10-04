# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Limpiamos la tabla de recetas antes de crear nuevas (opcional)
Recipe.destroy_all

# Crear algunas recetas de ejemplo
Recipe.create!(
  title: "Margherita Pizza",
  cook_time: 30,
  difficulty: "Easy",
  instructions: "<p>1. Preheat the oven to 220°C.</p>
                 <p>2. Roll out the dough and spread the tomato sauce.</p>
                 <p>3. Add mozzarella cheese and fresh basil.</p>
                 <p>4. Bake for 12-15 minutes.</p>"
)

Recipe.create!(
  title: "Spaghetti Carbonara",
  cook_time: 25,
  difficulty: "Medium",
  instructions: "<p>1. Cook the spaghetti in salted water.</p>
                 <p>2. Fry the pancetta until crispy.</p>
                 <p>3. Mix eggs and Parmesan cheese in a bowl.</p>
                 <p>4. Quickly combine spaghetti, pancetta, and egg mixture.</p>"
)

Recipe.create!(
  title: "Tiramisu",
  cook_time: 40,
  difficulty: "Hard",
  instructions: "<p>1. Beat the egg yolks with sugar.</p>
                 <p>2. Add mascarpone cheese and mix well.</p>
                 <p>3. Dip the ladyfingers in coffee and layer alternately with the cream.</p>
                 <p>4. Refrigerate for at least 4 hours before serving.</p>"
)

