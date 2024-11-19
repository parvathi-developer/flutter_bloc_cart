class Productmodel {
  String? id;
  String? name;
  String? description;
  double? price;
  String? imageUrl;

  Productmodel(
      {this.id, this.name, this.description, this.price, this.imageUrl});

  Productmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
