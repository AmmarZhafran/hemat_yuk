import 'package:flutter/material.dart';
import 'package:hemat_yuk/user/hasil.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _potonganController = TextEditingController();
  final TextEditingController _cashbackdanaController = TextEditingController();
  final TextEditingController _admindanaController = TextEditingController();
  final TextEditingController _diskondanaController = TextEditingController();
  final TextEditingController _cashbackgopayController =
      TextEditingController();
  final TextEditingController _admingopayController = TextEditingController();
  final TextEditingController _diskongopayController = TextEditingController();
  final TextEditingController _cashbackovoController = TextEditingController();
  final TextEditingController _adminovoController = TextEditingController();
  final TextEditingController _diskonovoController = TextEditingController();

  @override
  void dispose() {
    _hargaController.dispose();
    _potonganController.dispose();
    _cashbackdanaController.dispose();
    _admindanaController.dispose();
    _diskondanaController.dispose();
    _cashbackgopayController.dispose();
    _admingopayController.dispose();
    _diskongopayController.dispose();
    _cashbackovoController.dispose();
    _adminovoController.dispose();
    _diskonovoController.dispose();

    super.dispose();
  }

  void _hapusSemuaInputs() {
    _hargaController.clear();
    _potonganController.clear();
    _cashbackdanaController.clear();
    _admindanaController.clear();
    _diskondanaController.clear();
    _cashbackgopayController.clear();
    _admingopayController.clear();
    _diskongopayController.clear();
    _cashbackovoController.clear();
    _adminovoController.clear();
    _diskonovoController.clear();
  }

  void _saveInputs() {
    final String harga = _hargaController.text;
    if (harga.isNotEmpty) {
      // Navigate to DetailPage and pass the harga value
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage(harga: harga)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 10,
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
            title: Text(
              "HematKuy Page",
              style: TextStyle(color: Colors.white),
            )),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _hargaController,
                      decoration: InputDecoration(
                        hintText: 'Masukan Harga',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _potonganController,
                      decoration: InputDecoration(
                        hintText: 'Minimal Potongan',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Metode Dana",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pembayaran : Rp "),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _cashbackdanaController,
                      decoration: InputDecoration(
                        hintText: 'masukan cash back',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _admindanaController,
                      decoration: InputDecoration(
                        hintText: 'masukan admin',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _diskondanaController,
                      decoration: InputDecoration(
                        hintText: 'masukan diskon',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Metode Gopay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pembayaran : Rp "),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _cashbackgopayController,
                      decoration: InputDecoration(
                        hintText: 'masukan cash back',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _admingopayController,
                      decoration: InputDecoration(
                        hintText: 'masukan admin',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _diskongopayController,
                      decoration: InputDecoration(
                        hintText: 'masukan diskon',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Metode Ovo",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pembayaran : Rp "),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _cashbackovoController,
                      decoration: InputDecoration(
                        hintText: 'masukan cash back',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _adminovoController,
                      decoration: InputDecoration(
                        hintText: 'masukan admin',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      controller: _diskonovoController,
                      decoration: InputDecoration(
                        hintText: 'masukan diskon',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _hapusSemuaInputs,
                        child: Text('Batal'),
                      ),
                      ElevatedButton(
                        onPressed: _saveInputs,
                        child: Text('Simpan'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
