import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDetailPantai extends StatefulWidget {
  String nama, gambar, provinsi,deskripsi;
  PageDetailPantai({this.nama,this.gambar,this.provinsi,this.deskripsi});
  @override
  _PageDetailPantaiState createState() => _PageDetailPantaiState();
}

class _PageDetailPantaiState extends State<PageDetailPantai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.nama}'),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: [
          Container(
            height: 240,
            child: Hero(
              tag: widget.nama,
              child: Material(
                child: InkWell(
                  child: Image.asset('gambar/${widget.gambar}', fit: BoxFit.contain,),
                ),
              ),
            ),
          ),
          BagianNamaPantai(nama: widget.nama, provinsi: widget.provinsi,),
          BagianDeskripsiPantai(deskripsi: widget.deskripsi,)
        ],
      ),
    );
  }
}

class BagianNamaPantai extends StatelessWidget {

  String nama, provinsi;
  BagianNamaPantai({this.nama,this.provinsi});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama, style: TextStyle(fontSize: 20, color: Colors.blue),),
                Text(provinsi, style: TextStyle(fontSize: 15, color: Colors.lightBlue),)
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.beach_access, size: 40.0, color: Colors.lightBlueAccent,)
            ],
          )
        ],
      ),
    );
  }
}

class BagianDeskripsiPantai extends StatelessWidget {
  String deskripsi;
  BagianDeskripsiPantai({this.deskripsi});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Text('$deskripsi',style: TextStyle(fontSize: 14.0), textAlign: TextAlign.justify,),
        ),
      ),
    );
  }
}


