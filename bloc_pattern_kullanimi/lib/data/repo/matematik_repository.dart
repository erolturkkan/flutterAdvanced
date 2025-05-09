class MatematikRepository{
  int toplamaYap(String alinanSayi, String alinanSayi2){
    int sayi1 = int.parse(alinanSayi);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int carpmaYap(String alinanSayi, String alinanSayi2){
    int sayi1 = int.parse(alinanSayi);
    int sayi2 = int.parse(alinanSayi2);
    int carpim = sayi1 * sayi2;
    return carpim;
  }
}