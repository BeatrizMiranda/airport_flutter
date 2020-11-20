import 'package:airport/components/footer.dart';
import 'package:airport/layout/pallets.dart';
import 'package:airport/views/searchPage.dart';
import 'package:flutter/material.dart';

class MyTrips extends StatefulWidget {
  MyTrips({Key key}) : super(key: key);

  @override
  _MyTripsState createState() => _MyTripsState();
}
class _MyTripsState extends State<MyTrips> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: Footer(),
      floatingActionButton: FooterFloatingBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Palette.background,
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 70, 25, 40),
        child: 
          Column(
            children: [
            Center(child: Text("Minhas Viagens", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Palette.lightBlack))),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: _emptyTrips()
            ),
          ],
        ),
      )
    );
  }

  Widget _emptyTrips() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
            child: Text('Você não possui viagens', style: TextStyle(fontSize: 22, color: Palette.lightBlack)),
          ),
          Image.asset(
            "src/img/EmptyTrips.png",
            fit: BoxFit.cover,
            height: 250
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: InkWell(
              child: Text('Agende Uma!', style: TextStyle(decoration: TextDecoration.underline, fontSize: 27, fontWeight: FontWeight.bold, color: Palette.lightText)),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchPage())),
            ),
          ),
        ],
      ),
    );
  }
}