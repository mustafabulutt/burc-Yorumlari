import 'package:burcrehberi/burcListe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'models/burc.dart';

class burcdetay extends StatelessWidget {
  int gelenDeger;

  burcdetay(this.gelenDeger);

  Burc secilenBurc;

  @override
  Widget build(BuildContext context) {
    secilenBurc = burcListe.tumBurclar[gelenDeger];

    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.BurcAdi + " " + "Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset("images/"+secilenBurc.BurcAdiBuyukResim , fit: BoxFit.cover,),

            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(secilenBurc.BurcDetayi ,style: TextStyle(fontSize: 19 , fontStyle: FontStyle.italic ,  color: Colors.pinkAccent),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
