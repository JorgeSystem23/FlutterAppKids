import 'package:bloc/bloc.dart';
import 'package:flutter_kids/main/bloc/high_score_event.dart';
import 'package:flutter_kids/main/bloc/high_score_state.dart';

class MyScreenBloc extends Bloc<MyScreenEvent, MyScreenState> {
  MyScreenBloc() : super(MyScreenInitialState()) {
    on<SubmitNameEvent>((event, emit) {
      // Lógica para manejar la presentación del nombre y récord.
      emit(NameSubmittedState(event.name));
    });
  }
}
