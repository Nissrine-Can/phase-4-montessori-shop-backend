#create users
new_parent = User.create(username: "new_parent", email: "newparent@123.com", password: "1234")
fun_mom = User.create(username: "fun_mom", email: "funmom@123.com", password: "abcd")



#create items
wooden_sorting_and_stacking = Item.create(name: "Wooden Sorting and Stacking Puzzle", image:"https://m.media-amazon.com/images/I/61ECaGmguIL._AC_SL1500_.jpg", description: "This wooden shape puzzle contains 5 colors and 5 geometric shapes. You can ask your child about numbers, colors and shapes then try to make different combinations. It helps to give your child’s brain a work out while they play it.", price: 15.00, seller: fun_mom, categories: "1 Year")

wooden_rattle = Item.create(name: "Wooden Rattle", image:"https://montessorimethd-kbmmarketingltd.netdna-ssl.com/wp-content/uploads/2020/01/wooden-montessori-rattle.jpg", description: "Wooden made from natural beech wood,natural Eco-friendly water paint,non-toxic,no paint,only sanding", price: 12.00, seller: fun_mom, categories: "0 - 6 Months")

spinning_drum = Item.create(name: "Spinning Drum", image:"https://m.media-amazon.com/images/I/318vgUcl6fL._AC_.jpg", description: "The box is made of high-quality beech wood and ply bass wood. Exquisite technology, safe and healthy, non-toxic and tasteless, and can be used safely by children. As your young child starts to explore the world around them they will find this spinning drum fascinating. The easy rolling movement will help your child develop their arm and wrist muscles and eye hand coordination while the colours will keep your child interested.", price: 18.00, seller: fun_mom, categories: "6 - 12 Months")


object_permanence_box = Item.create(name: "Object Permanence Box", image: "https://montessorioutlet.com/media/catalog/product/cache/98fa912af9f7f13bdc6b7a938fda1d01/h/t/httpwww.montessorioutlet.commas_assetsfull510100010.jpg",description: "The Object Permanence Box with Tray contains a wooden box with tray and three wooden balls(red, yellow, blue).", price: 15.00, seller: fun_mom, categories: "6 - 12 Months")

climbing_triangle_with_ramp = Item.create(name: "Climbing Triangle With Ramp", image: "https://m.media-amazon.com/images/I/715JGuWUPNL._AC_SL1500_.jpg", description: "The woods used for Climbing triangle and Climbing Ramp are made of beech wood with containing the highest rigidity.", price: 250.00, seller: new_parent, categories: "1 Year")

musical_instruments = Item.create(name: "Musical Instruments", image: "https://cdn.shopify.com/s/files/1/0506/0037/8566/products/instrumenti_d1ad9af8-6f85-426c-ac60-74de270ae144_1296x.png?v=1648754776", description: "Made with kid-friendly wood.", price: 18.00, seller: fun_mom, categories: "2 Years")

sandpaper_letters_lowercase = Item.create(name: "Sandpaper Letters Lowercase", image: "https://m.media-amazon.com/images/I/41tQVEMuqQL._AC_SX425_.jpg", description: "Designed for right-handed learners. Consonants are on pink wooden boards. Vowels are on blue wooden boards.", price: 25.00, seller: new_parent, categories: "3 Years")

numerical_rods = Item.create(name: " Small Numerical Rods with Number Tiles Montessori Math Toys Materials", image:"https://m.media-amazon.com/images/I/41ZdbI+QNiL._AC_.jpg", description:"Through the sense of touch and vision, help children to have a correct understanding of the length difference in sense. Help children to establish the concept of order and the measurement method of perceptual length. Prepare for the understanding of numbers and lay the foundation for further mathematics learning", price: 20.00, seller: new_parent, categories: "3 Years")

sandpaper_numbers = Item.create(name: "Sandpaper Numbers with Box", image: "https://m.media-amazon.com/images/I/41s1eJJtn4L._AC_.jpg", description: "The Sandpaper Numerals introduce the child to symbol 0-9 and their corresponding number names. By tracing the numerals in the style and direction in which they are written, the child is preparing for writing numbers. The 10 rough sandpaper numerals are mounted on smooth green boards.", price: 25.00, seller: new_parent, categories: "2 Years")


