import 'package:dictionary_app/model/word_response.dart';
import 'package:dictionary_app/repo/word_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dictionary_cubit_state.dart';

class DictionaryCubit extends Cubit<DictionaryState>{
  final WordRepository _repository;
  DictionaryCubit(this._repository) : super(NoWordSearchedState());

  final queryController = TextEditingController();
  Future getWordSearched() async{
    emit(WordSearchingState());

    try {
      final words = await _repository.getWordFromDictionary(queryController.text);

      words == null? emit(ErrorState("There is some issue")) : WordSearchedState(words);
    } on Exception catch (e) {
      print(e); //we can show it in snackbar also
      emit(ErrorState(e.toString()));
    }
  }

}

