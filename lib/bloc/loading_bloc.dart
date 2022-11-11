import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingBloc extends Bloc<LoadingEvent, bool>{
  LoadingBloc() : super(false){
    on<LoadingBlocEvent>(_onLoading);
    on<LoadedBlocEvent>(_onLoaded);
  }

  void _onLoading(LoadingBlocEvent event, Emitter<bool> emitter) => emit(true);
  void _onLoaded(LoadedBlocEvent event, Emitter<bool> emitter) => emit(false);

}

abstract class LoadingEvent{}
class LoadingBlocEvent extends LoadingEvent{}
class LoadedBlocEvent extends LoadingEvent{}