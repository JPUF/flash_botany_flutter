import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../injection.dart';
import '../../models/lesson_progression.dart';
import '../../repositories/lesson_repository.dart';

part 'progression_bloc.freezed.dart';
part 'progression_event.dart';
part 'progression_state.dart';

class ProgressionBloc extends Bloc<ProgressionEvent, ProgressionState> {
  final LessonRepository _lessonRepo = getIt<LessonRepository>();

  ProgressionBloc() : super(ProgressionState.initial()) {
    on<ProgressionEvent>(
      (event, emit) => event.map(
        getProgressions: (event) => _getProgressions(event, emit),
      ),
    );
  }

  _getProgressions(event, Emitter<ProgressionState> emit) async {
    final progressions = await _lessonRepo.getAllProgressions();
    emit(state.copyWith(progressions: progressions));
  }
}
