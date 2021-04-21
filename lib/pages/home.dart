import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 5.0),
                    child: Image.asset('images/gopay.png',scale: 3,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text(
                      'Rp 30.000',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GopayMenuItems(
                      images: Image.asset('images/pay.png',scale: 3,),
                      title: 'Pay',
                    ),
                    GopayMenuItems(
                      images: Image.asset('images/promo.png',scale: 3,),
                      title: 'Promo',
                    ),
                    GopayMenuItems(
                      images: Image.asset('images/topup.png',scale: 3,),
                      title: 'Top Up',
                    ),
                    GopayMenuItems(
                      images: Image.asset('images/more.png',scale: 3,),
                      title: 'More',
                    ),
                  ],
                ),
              )
            ),
            SizedBox(
              height: 10,
            ),
            GridMenu(),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/logo.png',scale: 15),
                Text("Your nearest Alfamart - 58 m away"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/indomaret.jpeg'),fit: BoxFit.cover),
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6,right: 40.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Text(
                                "Top Up at a Store Near You",
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,
                                child: Text(
                                  'Jl. Bekasi Timur Raya Rt. 008, Rw.09, Cipinang Besar Utara, Jatinegara,Jakarta Timur'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.2,
                                  child: TextButton(
                                    onPressed: (){},
                                    child: Text('I\'M IN'),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
                                    ),
                                  )
                                ),
                              ),
                            ]
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/logo.png',scale: 15),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pilihan Terlaris",
                      ),
                      Text(
                        "Lihat Semua",
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ImageScroll(imgpath: "images/MieAyam.jpeg", text: "Mie Ayam",),
                      ImageScroll(imgpath: "images/NasiGoreng.jpeg", text: "Nasi Goreng",),
                      ImageScroll(imgpath: "images/Kwetiausapi.jpeg", text: "Kwetiau Goreng",),
                      ImageScroll(imgpath: "images/Bihun.jpeg", text: "Bihun Goreng",),
                      ImageScroll(imgpath: "images/Pempek.jpeg", text: "Pempek Palembang",),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/bannernews.png'),fit: BoxFit.cover),
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    child: TextButton(
                      onPressed: (){},
                      child: Text('SEE NEWS'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
                      ),
                    ),
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/bannertopup.png'),fit: BoxFit.cover),
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

class GopayMenuItems extends StatelessWidget {
  const GopayMenuItems({
    Key key, this.images, this.title,
  }) : super(key: key);
  final Image images;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        images,
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class GridMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        children: mainMenuItem,
      ),
    );
  }
}

List <Widget> mainMenuItem = [
  InkWell(
    onTap: (){},
    child: MainMenuItems(
      title: 'GoRide',
      images: Image.asset('images/goride.png'),
    ),
  ),
  MainMenuItems(
    title: 'GoCar',
    images: Image.asset('images/gocar.png'),
  ),
  MainMenuItems(
    title: 'GoFood',
    images: Image.asset('images/gofood.png'),
  ),
  MainMenuItems(
    title: 'GoBlueBird',
    images: Image.asset('images/gobluebird.png'),
  ),
  MainMenuItems(
    title: 'GoSend',
    images: Image.asset('images/gosend.png'),
  ),
  MainMenuItems(
    title: 'GoDeals',
    images: Image.asset('images/godeals.png'),
  ),
  MainMenuItems(
    title: 'GoPulsa',
    images: Image.asset('images/gopulsa.png'),
  ),
  MainMenuItems(
    title: 'MORE',
    images: Image.asset('images/more-1.png'),
  ),
];

class MainMenuItems extends StatelessWidget {
  MainMenuItems({this.title, this.images,});
  final String title;
  final Image images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: images,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ImageScroll extends StatelessWidget {
  const ImageScroll({Key key, this.imgpath, this.text}): super(key: key);
  final String imgpath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:14),
      child: Column(
        children: [
          Container(
            width: 123,
            height: 123,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgpath),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height:6),
          Text(text)
        ],
      ),
    );
  }
}