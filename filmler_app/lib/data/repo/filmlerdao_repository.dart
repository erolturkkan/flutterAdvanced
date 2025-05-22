import 'package:filmler_app/sqlite/veritabani_yardimcisi.dart';

import '../entity/filmler.dart';

class FilmlerDaoRepository {
  Future<List<Filmler>> filmleriYukle() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler");

    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Filmler(id: satir["id"], ad: satir["ad"], resim: satir["resim"], fiyat: satir["fiyat"]);
    });
  }
}