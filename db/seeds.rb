#create users
new_parent = User.create(username: "new_parent", email: "newparent@123.com")
fun_mom = User.create(username: "fun_mom", email: "funmom@123.com")

#create categories
birth_6months = Category.create(name: "0 - 6 Months")
six_12months = Category.create(name: "6 - 12 Months")
one_year = Category.create(name: "1 Year")
two_year = Category.create(name: "2 Year")
three_year = Category.create(name: "3 Year")

#create items
wooden_rattle = Item.create(name: "Wooden Rattle", description: "Wooden made from natural beech wood,natural Eco-friendly water paint,non-toxic,no paint,only sanding", price: 12.00, seller: fun_mom)
object_permanence_box = Item.create(name: "Object Permanence Box", description: "The Object Permanence Box with Tray contains a wooden box with tray and three wooden balls(red, yellow, blue).", price: 15.00, seller: fun_mom)
climbing_triangle_with_ramp = Item.create(name: "Climbing Triangle With Ramp", description: "The woods used for Climbing triangle and Climbing Ramp are made of beech wood with containing the highest rigidity.", price: 250.00, seller: new_parent)
musical_instruments = Item.create(name: "Musical Instruments", description: "Made with kid-friendly wood.", price: 18.00, seller: fun_mom)
sandpaper_letters_lowercase = Item.create(name: "Sandpaper Letters Lowercase", description: "Designed for right-handed learners. Consonants are on pink wooden boards. Vowels are on blue wooden boards.", price: 25.00, seller: new_parent)

#create items
CategoryItem.create(item: wooden_rattle, category: birth_6months)
CategoryItem.create(item: object_permanence_box, category: six_12months)
CategoryItem.create(item: climbing_triangle_with_ramp, category: one_year)
CategoryItem.create(item: musical_instruments, category: two_year)
CategoryItem.create(item: sandpaper_letters_lowercase, category: three_year)
