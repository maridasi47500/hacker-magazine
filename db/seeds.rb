# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Programminglanguage.destroy_all
a=Programminglanguage.create(name:"python",
                           myprogram: "c=`cat <<EOF
try:
  %s
except Exception as e:
  print(e)
EOF`
python3 -c \"$c\" ")

p a
