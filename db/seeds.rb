# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pop_culture = Category.create!(:name => 'Pop Culture')
sports = Category.create!(:name => 'Sports')
tazos = Category.create!(:name => 'Tazos')
woolworths = Category.create!(:name => 'Woolworths')

 afl = Subcategory.create!(:name => 'AFL')
.move_to_child_of(sports)

nrl = Subcategory.create!(:name => 'NRL')
.move_to_child_of(sports)

basketball = Subcategory.create!(:name => 'Basketball')
.move_to_child_of(sports)

baseball= Subcategory.create!(:name => 'Baseball')
.move_to_child_of(sports)

cricket = Subcategory.create!(:name => 'Cricket')
.move_to_child_of(sports)

tmnt = Subcategory.create!(:name => 'Ninja Turtles')
.move_to_child_of(pop_culture)

pokemon = Subcategory.create!(:name => 'Pokemon')
.move_to_child_of(pop_culture)

final_fantasy = Subcategory.create!(:name => 'Final Fantasy')
.move_to_child_of(pop_culture)

pop_marvel = Subcategory.create!(:name => 'Marvel Cards')
.move_to_child_of(pop_culture)

dc = Subcategory.create!(:name => 'DC')
.move_to_child_of(pop_culture)

yugioh = Subcategory.create!(:name => 'Yu-gi-oh')
.move_to_child_of(pop_culture)

looney_tunes = Subcategory.create!(:name => 'Looney Tunes')
.move_to_child_of(tazos)

cheetahs = Subcategory.create!(:name => 'Cheetahs')
.move_to_child_of(tazos)

star_wars = Subcategory.create!(:name => 'Star Wars')
.move_to_child_of(tazos)

simpsons = Subcategory.create!(:name => 'Simpsons')
.move_to_child_of(tazos)

space_jam = Subcategory.create!(:name => 'Space Jam')
.move_to_child_of(tazos)

dreamworks = Subcategory.create!(:name => 'Dreamworks')
.move_to_child_of(woolworths)

disney = Subcategory.create!(:name => 'Disney Dominoes')
.move_to_child_of(woolworths)

w_marvel = Subcategory.create!(:name => 'Marvel Discs')
.move_to_child_of(woolworths)
