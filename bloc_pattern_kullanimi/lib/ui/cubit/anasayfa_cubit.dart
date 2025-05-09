import 'package:bloc_pattern_kullanimi/data/repo/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);

  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi, String alinanSayi2){
    emit(mrepo.toplamaYap(alinanSayi, alinanSayi2)); //Tetikleme ve veri gönderme
  }

  void carpmaYap(String alinanSayi, String alinanSayi2){
    emit(mrepo.carpmaYap(alinanSayi, alinanSayi2));//Tetikleme ve veri gönderme
  }

}