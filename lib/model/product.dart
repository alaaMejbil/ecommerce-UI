class Product {
  final int id, price, quantity;
  final String name, band, description, image, category;
  final List<int> sizes;
  final List<String> colors;
  final List<String> gallery;
  final List<Review> reviews;

  Product({
    required this.quantity,
    required this.name,
    required this.category,
    required this.sizes,
    required this.colors,
    required this.id,
    required this.price,
    required this.band,
    required this.description,
    required this.image,
    required this.gallery,
    required this.reviews,
  });
}

class Review {
  final String userName;
  final double rating;
  final String comment;

  Review({required this.userName, required this.rating, required this.comment});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    name: "Airpad",
    band: "Airpod pro,airtag",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/airpod.png',
    price: 68,
    quantity: 365,
    colors: ['blue', 'black', 'red'],
    sizes: [],
    gallery: [
      'assets/images/airpod.png',
      'assets/images/airpod2.png',
      'assets/images/airpod3.png',
    ],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
  Product(
    id: 2,
    name: "Camera",
    band: "Canon Camera H101",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/camera3.png',
    gallery: [
      'assets/images/camera1.png',
      'assets/images/camera2.png',
      'assets/images/camera3.png',
    ],
    price: 30,
    quantity: 365,
    colors: ['white', 'black', 'red'],
    sizes: [],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
  Product(
    id: 3,
    name: "Laptop Omen Gaming",
    band: "hp",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/laptob1.png',
    gallery: [
      'assets/images/laptob1.png',
      'assets/images/labtop2.png',
      'assets/images/labtop3.png',
    ],
    price: 1200,
    quantity: 365,
    colors: ['yello', 'black', 'red'],
    sizes: [],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
  Product(
    id: 4,
    name: "Headset",
    band: "Listen with spatial audio",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/headphone1.png',
    gallery: [
      'assets/images/headphone1.png',
      'assets/images/headphone2.png',
      'assets/images/headphone3.png',
    ],
    price: 16,
    quantity: 22,
    colors: ['yello', 'black', 'red', 'blue'],
    sizes: [],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
  Product(
    id: 5,
    name: "S10+",
    band: "Samsung",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/mobile1.png',
    gallery: [
      'assets/images/mobile1.png',
      'assets/images/mobile2.png',
      'assets/images/mobile3.png',
    ],
    price: 250,
    quantity: 250,
    colors: ['black', 'red'],
    sizes: [],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
  Product(
    id: 6,
    name: "Gaming Mouse",
    band: "Logitech G403",
    category: 'audio device',
    description:
        "Airpods Pro and Airtags case is made of High-quality Silicone Rubber, the unique process makes the cases more skin-friendly and can protect your case from most of the daily drops,scratches and bumps without adding any bulk. \n here is a small hole at the bottom of the protective cover to charge the AirPods Pro without disassembly",
    image: 'assets/images/mouse1.png',
    gallery: [
      'assets/images/mouse1.png',
      'assets/images/mouse2.png',
      'assets/images/mouse3.png',
    ],
    price: 50,
    quantity: 250,
    colors: ['yello', 'black', 'red'],
    sizes: [],
    reviews: [
      Review(
          userName: 'alaa Mejbil',
          rating: 4.5,
          comment:
              'I loved this product so much , so i recommend every one to by this product , it is very usefall thing in our life'),
      Review(userName: 'Ali sy', rating: 3.5, comment: 'very beautiful'),
      Review(userName: 'Baidaa', rating: 4.0, comment: 'I liked it so much.')
    ],
  ),
];
