class Products {
   int? id;
   String? title;
   dynamic price;
   String? description;
   String? category;
   String? image;


  Products(
      {
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image});

   factory Products.fromJson(Map<String, dynamic> parsedjson) {
     return Products(id: parsedjson["id"],
         title: parsedjson["title"],
         price: parsedjson["price"],
         description: parsedjson["description"],
         category: parsedjson["category"],
         image: parsedjson["image"]);

    // id = json['id'];
    // title = json['title'];
    // price = json['price'];
    // description = json['description'];
    // category = json['category'];
    // image = json['image'];
  }
}