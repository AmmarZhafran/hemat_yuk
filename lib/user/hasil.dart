import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String harga;

  const DetailPage({required this.harga});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> hargaList = [];

  @override
  void initState() {
    super.initState();
   
    hargaList.add(widget.harga);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: ListView.builder(
        itemCount: hargaList.length,
        itemBuilder: (context, index) {
          return _buildDetailContainer(hargaList[index]);
        },
      ),
    );
  }

  Widget _buildDetailContainer(String harga) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 290,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/gambar_card.jpg',
                ),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OVO",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),

            Text(
              "anda mendapat potongan harga",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Rp  $harga',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            
          ],
        ),
      ]),
    );
  }
}
