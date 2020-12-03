import 'package:flutter/material.dart';
import 'package:task_6_flutter_wallpaper_app/detail_pantai.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Aldi Irsan Majid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //deklarasi data list
  List<Container> daftarPantaiIndonesia = new List();

  var itemPantai = [
    {"nama" : "Pantai Gili Trawangan" , "gambar" : "gili-trawangan-lombok-ntb.jpg" , "provinsi" : "Nusa Tenggara Barat", "deskripsi" : "Nama ini pasti sudah gak asing lagi di telingamu. Tapi memang gak bisa dipungkiri, keindahan alam, pasir putih, dan suasana damai di Kepulauan Gili memang patut diacungi jempol."},
    {"nama" : "Pantai Karimun Jawa" , "gambar" : "karimun-jawa-jawa-tengah.jpg" , "provinsi" : "Jawa Tengah", "deskripsi" : "Kepulauan ini terdiri dari beberapa pulau-pulau kecil. Kamu bisa \"lompat\" dari satu pulau ke pulau lain dan menikmati keindahan pantai-pantai berpasir putih di sana. Ingat, gak perlu jauh-jauh ke Maldives."},
    {"nama" : "Pantai Nembrala" , "gambar" : "pantai-nembrala.jpg" , "provinsi" : "Nusa Tenggara Timur", "deskripsi" : "Inilah titik paling selatan di Indonesia, Pulau Roti. Keindahan alamnya masih belum tersentuh."},
    {"nama" : "Pantai Nihiwatu" , "gambar" : "pantai-nihiwatu-sumba-ntt.jpg" , "provinsi" : "Nusa Tenggara Timur", "deskripsi" : "CNN mengurutkan pantai ini pada nomor 17 pantai terbaik di dunia! Letaknya tersembunyi di balik sebuah hutan. Pantai sepanjang 2,5 kilometer ini dianggap sebagai surga yang belum tersentuh."},
    {"nama" : "Pantai Ora" , "gambar" : "pantai-ora-maluku-tengah.jpg" , "provinsi" : "Maluku","deskripsi" : "Pantai ini disebut sebagai Bora-Boranya Indonesia. Gak perlu jauh-jauh ke Bora-Bora, Polinesia Perancis, dan Maldives, Maluku Tengah punya pulau yang kalah indah dari semuanya."},
    {"nama" : "Pantai Padang-padang" , "gambar" : "pantai-padang-padang-bali.jpg" , "provinsi" : "Bali", "deskripsi" : "Pantai ini dijadikan lokasi film Julia Robert \"Eat, Pray, Love\". Dipenuhi berbagai karang besar yang menjadikannya tampak lebih indah lagi. Ombaknya pun sangat baik bagi para peselancar, sehingga turnamen surfing dunia sering digelar di sana."},
    {"nama" : "Pantai Pasir Putih" , "gambar" : "pantai-pasir-putih-karang-asem-bali.jpg" , "provinsi" : "Bali", "deskripsi" : "Letaknya tersembunyi dan jauh dari keramaian kota. Oleh karena itu, pantai ini sering disebut surga tersembunyi di Bali Timur. Sejauh mata memandang rasanya bikin adem."},
    {"nama" : "Pantai Pink" , "gambar" : "pantai-pink-pulau-komodo-ntt.jpg" , "provinsi" : "Nusa Tenggara Timur", "deskripsi" : "Pantai berpasir warna pink ini jelas sangat unik dan spesial. Warnanya pink karena pasir putih telah bercampur dengan pasir merah. Pantai dengan pasir yang romantis ini hanya ada tujuh di dunia, dan yang tercantik ada di Indonesia!"},
    {"nama" : "Pantai Sawarna" , "gambar" : "pantai-sawarna-banten.jpg" , "provinsi" : "Banten", "deskripsi" : "Pantai ini terletak di sebuah desa kecil di Provinsi Banten. Buat kamu yang suka berpetualang, pantai ini juga memiliki berbagai bukit berbatu, goa, dan hutan-hutan. Dijamin seru banget, deh!"},
    {"nama" : "Pantai Suluban" , "gambar" : "pantai-suluban-bali.jpeg" , "provinsi" : "Bali", "deskripsi" : "Meski sudah sering ke Uluwatu di Bali, mungkin kamu masih belum pernah dengar nama Pantai Suluban. Tidak hanya pemandangannya yang keren, goa-goa yang cantik juga bisa kamu temui di sini."},
    {"nama" : "Pantai Belitung" , "gambar" : "pulau-belitung-kepulauan-bangka-belitung.jpg" , "provinsi" : "Bangka Belitung", "deskripsi" : "Pulau Belitung memiliki berbagai pantai yang begitu indah dan menawan. Salah satunya Pantai Tanjung Tinggi. Pesonanya yang menakjubkan mulai dikenal dunia sejak dijadikan lokasi syuting film \"Laskar Pelangi\"."},
    {"nama" : "Pantai Derawan" , "gambar" : "pantai-derawan.jpg" , "provinsi" : "Kalimantan Timur", "deskripsi" : "Terletak di bagian timur Kalimantan, pulau ini memiliki berbagai macam flora dan fauna laut yang langka di dunia. Kamu bisa berenang dengan ubur-ubur tak beracun dan kura-kura hijau terbesar di dunia di sana. Kapan lagi ya, kan?"},
    {"nama" : "Pantai Anoi Itam" , "gambar" : "pulau-weh-aceh.jpg" , "provinsi" : "Aceh", "deskripsi" : "Pulau ini menjadi titik paling barat Tanah Air kita, atau yang kerap disebut Sabang. Pulau yang sangat kecil ini memiliki tiga pantai yang luar biasa indahnya: Anoi Itam, Gapang, dan Iboih. Sudah pernah ke sana, belum?"},
    {"nama" : "Pantai Raja Ampat" , "gambar" : "raja-ampat-papua-barat.jpg" , "provinsi" : "Papua Barat", "deskripsi" : "Keindahan Raja Ampat telah kesohor hingga level dunia. Pesonanya memang luar biasa. Kalau tadi adalah titik barat Indonesia, Papua menjadi titik timur Indonesia. Sepertinya tak perlu dijelaskan lagi keindahan tempat ini."},
    {"nama" : "Pantai Tomini" , "gambar" : "tomini-bay-sulawesi-utara.jpg" , "provinsi" : "Sulawesi Utara", "deskripsi" : "Kejernihan air di sini membuat pantai ini sangat cocok untuk diving dan snorkeling. Tempat ini belum banyak dijamah. Pas banget untuk mencari inspirasi dan membuat pikiran jadi refresh."},
  ];

  _buatDataListPantai() async {
    for(var i = 0; i<itemPantai.length; i++){
      final dataPantai = itemPantai[i];

      final String gambarPantai = dataPantai["gambar"];
      daftarPantaiIndonesia.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageDetailPantai(
                nama: dataPantai['nama'],
                gambar: gambarPantai,
                provinsi: dataPantai['provinsi'],
                deskripsi: dataPantai['deskripsi'],
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: dataPantai["nama"],
                  child: Image.asset('gambar/$gambarPantai',height: 85.0,width: 125, fit: BoxFit.contain,),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(dataPantai['nama'],style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),)
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataListPantai();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(crossAxisCount: 2, children: daftarPantaiIndonesia)
    );
  }
}
