import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingBloc extends Bloc<LoadingEvent, bool>{
  LoadingBloc() : super(false){
    on<LoadingBlocEvent>(_onLoading);
    on<LoadedBlocEvent>(_onLoaded);
  }

  void _onLoading(LoadingBlocEvent event, Emitter<bool> emitter) => emit(true);
  void _onLoaded(LoadedBlocEvent event, Emitter<bool> emitter) => emit(false);

}

class LoadingContentBloc extends Bloc<LoadingEvent, bool>{
  LoadingContentBloc() : super(true){
    on<LoadingContentBlocEvent>(_onLoading);
    on<LoadedContentBlocEvent>(_onLoaded);
  }

  void _onLoading(LoadingContentBlocEvent event, Emitter<bool> emitter) => emit(true);
  void _onLoaded(LoadedContentBlocEvent event, Emitter<bool> emitter) => emit(false);

}

abstract class LoadingEvent{}
class LoadingBlocEvent extends LoadingEvent{}
class LoadedBlocEvent extends LoadingEvent{}

class LoadingContentBlocEvent extends LoadingEvent{}
class LoadedContentBlocEvent extends LoadingEvent{}
