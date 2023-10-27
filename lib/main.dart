import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalSatu(),
    title: "Wisata Anyer",
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => new HalSatu(),
      '/HalDua': (BuildContext context) => new HalDua(),
      '/HalTiga': (BuildContext context) => new HalTiga(),
    },
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Image.network(
              "https://th.bing.com/th/id/OIP.dpjQmyU8fsOt0ERVAUjkEQAAAA?pid=ImgDet&rs=1"),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("PANTAI CARITA"),
                        Text("Pandeglang, Banten, Indonesia")
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: Colors.pinkAccent,
                    ),
                    Text("4,9/5")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        new IconButton(
                            icon: new Icon(
                              Icons.assignment_ind_rounded,
                              size: 25,
                              color: Colors.lightBlue,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/HalDua');
                            }),
                        Text("Data Diri")
                      ],
                    ),
                    Column(
                      children: [
                        new IconButton(
                            icon: new Icon(
                              Icons.access_time,
                              size: 25,
                              color: Colors.lightBlue,
                            ),
                            onPressed: null),
                        Text("09.00 - 21.00")
                      ],
                    ),
                    Column(
                      children: [
                        new IconButton(
                            icon: new Icon(
                              Icons.monetization_on,
                              size: 25,
                              color: Colors.lightBlue,
                            ),
                            onPressed: null),
                        Text("RP.25.000,-")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Pantai Carita (Sunda: ᮘᮞᮤᮞᮤᮁ ᮎᮛᮤᮒ, translit. Basisir Carita) adalah sebuah pantai di pesisir barat provinsi Banten, Indonesia. Fasilitas di Pantai Carita cukup lengkap yaitu Banana boat, snorkling, papan seluncur, diving, dan fasilitas lainnya. Banyak juga penginapan-penginapan sepanjang pesisir pantai dan atau rumah-rumah warga yang difungsikan untuk penginapan.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pantai Carita merupakan objek wisata yang terletak di Kabupaten Pandeglang dan telah ditetapkan berdasarkan SK Menteri Pertanian No.440/kpts/UM/1978 pada tanggal 15 Juli 1978 sebagai Taman Wisata Alam. Pantai ini terkenal dengan pasir pantainya yang putih sehingga membuat kawasan ini sering dikunjungi oleh wisatawan lokal maupun mancanegara.",
                  textAlign: TextAlign.justify,
                ),
                TextButton(
                  child: const Text('BELI TIKET'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HalTiga');
                    // Aksi ketika button diklik
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(children: [
        SizedBox(
          height: 90,
        ),
        Image.network(
            "https://th.bing.com/th/id/R.a4db5988ead3ea935da1b9ad63bd5ad9?rik=aD%2bj4NJ4DXsQBw&riu=http%3a%2f%2fmanage.lovingnannies.com%2fimg%2fprofile_icon.png&ehk=Isv9vv0E0Y%2brIhzgPHCGjJYanxE2FBDeaXXbth%2bPQm8%3d&risl=&pid=ImgRaw&r=0"),
        Container(
          margin: EdgeInsets.all(35),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BIODATA DIRI",
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("NAMA : Rifdatun Nafiah"),
                  SizedBox(
                    height: 20,
                  ),
                  Text("NIM : 3337220075"),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Prodi : Informatika"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class HalTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please wait, Checking tickets....',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none, // Menghilangkan dekorasi garis
            ),
          ),
          SizedBox(height: 16),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),
            strokeWidth: 2, // Mengatur lebar garis menjadi 2
          ),
        ],
      ),
    );
  }
}
