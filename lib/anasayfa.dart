import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hepsiburada_clone/colors.dart';
import 'package:flutter_hepsiburada_clone/product.dart';
import 'package:flutter_hepsiburada_clone/productcard.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var categoryImages = [
    "hepsiburada_1.jpeg",
    "hepsiburada_2.jpeg",
    "hepsiburada_3.jpeg",
    "hepsiburada_4.jpeg",
    "hepsiburada_5.jpeg",
    "hepsiburada_6.jpeg",
    "hepsiburada_7.jpeg",
    "hepsiburada_8.jpeg",
  ];

  var sliderImages = [
    "https://images.hepsiburada.net/banners/s/0/900-400/App_Banner_(1)133171235938591095.jpg/format:webp",
    "https://images.hepsiburada.net/banners/s/0/900-400/GRA-135207_ModadaKesifGunleri_App-1133171387842424315.jpg/format:webp",
    "https://images.hepsiburada.net/banners/s/0/900-400/GRA-137629_zuccaciye_mutfakvesofraurunleri_KisTemplate_App133172946130494039.jpg/format:webp",
    "https://images.hepsiburada.net/banners/s/0/900-400/app_nonpremium133172129502106104.png/format:webp",
    "https://images.hepsiburada.net/banners/s/0/900-400/136202_app133168685741021041133172244682439642.jpg/format:webp"
  ];

  var products = <Product>[
    Product(imageURL: "https://productimages.hepsiburada.net/s/322/550/110000316042901.jpg/format:webp", price: "2.999,00", description: "Karaca Air Pro Cook Köz XL Airfryer Space Gray Black"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/318/550/110000312545996.jpg/format:webp", price: "5.499,00", description: "Honor Pad 8 4GB 128GB Wifi 12' Mavi Tablet"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/95/550/110000038589090.jpg/format:webp", price: "1.849,00", description: "Huawei FreeBuds 4 Bluetooth Kulaklık (ANC - Aktif Gürültü Engelleme) Beyaz"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/344/1500/110000351189125.jpg", price: "249,99", description: "Joystar Erkek Uzun Outdoor Bot"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/55/550/11223880433714.jpg/format:webp", price: "679,89", description: "Tefal G25939 Titanyum 6X UnlimitedOne Krep Tavası 28 cm - 2100116322"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/22/550/9957338677298.jpg/format:webp", price: "1.209,00", description: "Xiaomi Mi Box S 4K Android Tv Box"),
    Product(imageURL: "https://productimages.hepsiburada.net/s/315/600-800/110000308740448.jpg/format:webp", price: "179,90", description: "Laluvia Yeşil I-D Baskılı Oversize Kapüşonlu Sweatshirt"),
  ];

  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 8.0),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("images/hepsiburada-logo.png"),
                    fit: BoxFit.cover),
                border: Border.all(color: renk1, width: 1.0),
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: renk1, width: 1.0),
                borderRadius: BorderRadius.circular(10.0)),
            child: Stack(
              children: [
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Ürün, kategori veya marka',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.grey),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      suffixIcon: const Icon(Icons.photo_camera_outlined,
                          color: Colors.black54),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: anaRenk))),
                ),
                Align(alignment: Alignment.bottomCenter,
                    child: Image.asset("images/hb_colorful_line.png"))
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: renk3,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_outlined,
                color: renk3,
                size: 25,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 34,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: renk3,
                        ),
                        label: Text(
                          "Ev - Yıldırım Mh. Bayrampaşa",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: renk3),
                        ),
                        style: TextButton.styleFrom(backgroundColor: renk1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      height: 34,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          "images/hepsipay-icon.png",
                        ),
                        label: Image.asset(
                          "images/hepsipay.png",
                        ),
                        style: TextButton.styleFrom(backgroundColor: renk1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: categoryImages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => RawMaterialButton(
                  onPressed: () {
                    print("${categoryImages[index]} tıklandı");
                  },
                  child: Image.asset("images/${categoryImages[index]}"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: anaRenk)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.diamond_outlined,
                            color: anaRenk,
                          ),
                          label: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "SANA ÖZEL",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: anaRenk),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Fırsatlar seni bekliyor",
                                    style:
                                        TextStyle(fontSize: 12, color: renk2),
                                  ))
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: anaRenk)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.discount_outlined,
                              color: anaRenk,
                            ),
                            label: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("4x4 İNDİRİM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: anaRenk)),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("8 kampanya var",
                                      style: TextStyle(
                                          fontSize: 12, color: renk2)),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
                itemCount: sliderImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = sliderImages[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0,left: 12.0),
                    child: Image.network(urlImage),
                  );
                },
                options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    pageSnapping: false)),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Süper Fiyat, Süper Teklif",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: renk3)),
                  Text("Tümü >",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: anaRenk))
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index],);
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Anasayfam"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: "Kategorilerim"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              label: "Sepetim"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: "Listelerim"),
          BottomNavigationBarItem(
              icon: Image.asset("images/hepsiburada-logo.png", width: 40),
              label: "Hepsi"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        selectedItemColor: anaRenk,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
