import 'package:burcrehberi/utlis/strings.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class burcListe extends StatelessWidget {
 static List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = VeriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Burc> VeriKaynaginiHazirla() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String KucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png"; //Koc->koc1.png
      String BuyukResim = Strings.BURC_ADLARI[i].toLowerCase() +
          "_buyuk" +
          "${i + 1}.png"; //Koc->koc_buyuk1.png
      Burc eklencekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          KucukResim,
          BuyukResim);
      burclar.add(eklencekBurc);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: 12,
    );
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc oAnListeyeEklenenBurc = tumBurclar[index];
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: ()=> Navigator.pushNamed(context, "/burcDetay/$index"),
           leading: Image.asset(
             "images/" + oAnListeyeEklenenBurc.BurcKucukResim,
             width: 64,
            height: 64,
           ),
          title: Text(
            oAnListeyeEklenenBurc.BurcAdi,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.pink.shade500),
          ),
          subtitle: Text(
            oAnListeyeEklenenBurc.BurcTarihi,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
        ),
      ),
    );
  }
}
