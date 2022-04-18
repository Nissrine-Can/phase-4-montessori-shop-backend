#create users
new_parent = User.create(username: "new_parent", email: "newparent@123.com")
fun_mom = User.create(username: "fun_mom", email: "funmom@123.com")



#create items
wooden_rattle = Item.create(name: "Wooden Rattle", image:"https://montessorimethd-kbmmarketingltd.netdna-ssl.com/wp-content/uploads/2020/01/wooden-montessori-rattle.jpg", description: "Wooden made from natural beech wood,natural Eco-friendly water paint,non-toxic,no paint,only sanding", price: 12.00, seller: fun_mom, categories: "0 - 6 Months")

object_permanence_box = Item.create(name: "Object Permanence Box", image: "https://montessorioutlet.com/media/catalog/product/cache/98fa912af9f7f13bdc6b7a938fda1d01/h/t/httpwww.montessorioutlet.commas_assetsfull510100010.jpg",description: "The Object Permanence Box with Tray contains a wooden box with tray and three wooden balls(red, yellow, blue).", price: 15.00, seller: fun_mom, categories: "6 - 12 Months")

climbing_triangle_with_ramp = Item.create(name: "Climbing Triangle With Ramp", image: "https://i.etsystatic.com/23911420/r/il/1cd5f1/2439341551/il_fullxfull.2439341551_s5h2.jpg", description: "The woods used for Climbing triangle and Climbing Ramp are made of beech wood with containing the highest rigidity.", price: 250.00, seller: new_parent, categories: "1 Year")

musical_instruments = Item.create(name: "Musical Instruments", image: "https://cdn.shopify.com/s/files/1/0506/0037/8566/products/instrumenti_d1ad9af8-6f85-426c-ac60-74de270ae144_1296x.png?v=1648754776", description: "Made with kid-friendly wood.", price: 18.00, seller: fun_mom, categories: "2 Years")

sandpaper_letters_lowercase = Item.create(name: "Sandpaper Letters Lowercase", image: "https://m.media-amazon.com/images/I/41tQVEMuqQL._AC_SX425_.jpg", description: "Designed for right-handed learners. Consonants are on pink wooden boards. Vowels are on blue wooden boards.", price: 25.00, seller: new_parent, categories: "3 Years")


