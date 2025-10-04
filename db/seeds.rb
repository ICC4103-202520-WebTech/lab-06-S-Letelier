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
  title: "Pizza Margarita",
  cook_time: 30,
  difficulty: "Easy",
  instructions: "<p>1. Precalentar el horno a 220°C.</p>
                 <p>2. Estirar la masa y colocar la salsa de tomate.</p>
                 <p>3. Agregar queso mozzarella y albahaca fresca.</p>
                 <p>4. Hornear durante 12-15 minutos.</p>"
)

Recipe.create!(
  title: "Spaghetti Carbonara",
  cook_time: 25,
  difficulty: "Medium",
  instructions: "<p>1. Cocinar los spaghetti en agua con sal.</p>
                 <p>2. Freír panceta hasta que quede crujiente.</p>
                 <p>3. Mezclar huevos y queso parmesano en un bol.</p>
                 <p>4. Combinar spaghetti, panceta y mezcla de huevo rápidamente.</p></p>"
)

Recipe.create!(
  title: "Tiramisu",
  cook_time: 40,
  difficulty: "Hard",
  instructions: "<p>1. Batir yemas con azúcar.</p>
                 <p>2. Agregar queso mascarpone y mezclar.</p>
                 <p>3. Sumergir los bizcochos en café y armar capas alternando con la crema.</p>
                 <p>4. Refrigerar al menos 4 horas antes de servir.</p>"
)
