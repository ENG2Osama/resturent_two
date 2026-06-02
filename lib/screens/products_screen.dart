import 'package:flutter/material.dart';
import 'product_details_screen.dart';
import '../models/product_model.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<Product> products = [
    Product(
      name: '🍕 بيتزا مارجريتا',
      description: 'بيتزا طازجة مع جبن الموزاريلا والريحان وصلصة الطماطم الغنية بالبهارات الإيطالية الأصيلة.',
      price: 25.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg',
      rating: 4.8,
      calories: '266 kcal',
      prepTime: '20 دقيقة',
    ),
    Product(
      name: '🍔 برجر لحم دبل',
      description: 'برجر لحم أنجوس مع خضار طازجة وصلصة خاصة وشريحتين من الجبن الذائب.',
      price: 18.5,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg',
      rating: 4.6,
      calories: '550 kcal',
      prepTime: '15 دقيقة',
    ),
    Product(
      name: '🍣 سوشي مكس',
      description: 'تشكيلة فاخرة من السوشي المتنوع مع صوص الصويا والوسابي والزنجبيل المخلل.',
      price: 35.0,
      imageUrl: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?q=80&w=1280&auto=format&fit=crop',
      rating: 4.9,
      calories: '320 kcal',
      prepTime: '25 دقيقة',
    ),
    Product(
      name: '🍝 معكرونة بولونيز',
      description: 'معكرونة إيطالية مع صلصة اللحم المفروم والطماطم ورشة من جبنة البارميزان.',
      price: 22.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2014/11/11/18/20/pasta-527286_1280.jpg',
      rating: 4.5,
      calories: '450 kcal',
      prepTime: '18 دقيقة',
    ),
    Product(
      name: '🥗 سلطة سيزر الدجاج',
      description: 'خس طازج مع قطع الدجاج المشوي، خبز محمص، وصلصة السيزر اللذيذة.',
      price: 15.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505_1280.jpg',
      rating: 4.7,
      calories: '300 kcal',
      prepTime: '10 دقائق',
    ),
    Product(
      name: '🥩 ستيك ريب آي',
      description: 'شريحة لحم بقري فاخرة مشوية حسب الطلب مع خضار سوتيه وبطاطا مهروسة.',
      price: 45.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/01/22/02/13/meat-1155132_1280.jpg',
      rating: 4.9,
      calories: '650 kcal',
      prepTime: '30 دقيقة',
    ),
    Product(
      name: '🌮 تاكو دجاج',
      description: 'تورتيلا مقرمشة محشوة بالدجاج المتبل، الجبن، الخس، والصلصة المكسيكية الحارة.',
      price: 12.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/08/23/15/52/tacos-1614764_1280.jpg',
      rating: 4.4,
      calories: '280 kcal',
      prepTime: '12 دقيقة',
    ),
    Product(
      name: '🥞 بان كيك بالعسل',
      description: 'فطائر هشة وذهبية تقدم مع الزبدة والعسل النقي والفواكه الطازجة.',
      price: 14.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg',
      rating: 4.6,
      calories: '410 kcal',
      prepTime: '15 دقيقة',
    ),
    Product(
      name: '☕ قهوة كابتشينو',
      description: 'مزيج مثالي من الإسبريسو القوي والحليب المبخر مع رغوة كثيفة ورشة كاكاو.',
      price: 8.5,
      imageUrl: 'https://cdn.pixabay.com/photo/2015/05/07/15/08/cookie-756601_1280.jpg',
      rating: 4.8,
      calories: '120 kcal',
      prepTime: '5 دقائق',
    ),
    Product(
      name: '🍰 كيك الشوكولاتة',
      description: 'كيكة شوكولاتة غنية ومحشوة بصلصة الشوكولاتة الذائبة وتقدم مع آيس كريم الفانيليا.',
      price: 18.0,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg',
      rating: 4.9,
      calories: '550 kcal',
      prepTime: '10 دقائق',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // تعيين اتجاه النص إلى اليمين لليسار إذا لم يكن محددًا
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('🍽️ مطعم ليالي تعز', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFF512F), Color(0xFFF09819)],
            ),
          ),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha:0.04),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => 
                        ProductDetailScreen(product: product),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeOutQuart;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Hero(
                      tag: 'product_image_${product.name}',
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Image.network(
                          product.imageUrl,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            width: 120,
                            height: 120,
                            color: Colors.grey[200],
                            child: const Icon(Icons.fastfood, size: 40, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3142),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                const Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                                const SizedBox(width: 4),
                                Text(
                                  '${product.rating}',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF9098B1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Icon(Icons.access_time_rounded, color: Color(0xFF9098B1), size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  product.prepTime,
                                  style: const TextStyle(fontSize: 12, color: Color(0xFF9098B1)),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [Color(0xFFFF512F), Color(0xFFF09819)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                              child: Text(
                                '${product.price} دينار',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFFFF512F), Color(0xFFF09819)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}