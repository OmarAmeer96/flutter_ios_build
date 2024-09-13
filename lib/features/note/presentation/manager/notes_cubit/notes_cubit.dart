import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/note/data/models/note_model.dart';

import '../../../../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }

  sortNotesByDate() {
    notes!.sort((a, b) => a.date.compareTo(b.date));
    emit(NotesSuccess());
  }

  filterNotesByCategory() {
    notes!.sort((a, b) => a.category.compareTo(b.category));
    emit(NotesSuccess());
  }

  sortNotedByPriorities() {
    notes!.sort((a, b) => a.priority.compareTo(b.priority));
    emit(NotesSuccess());
  }
}
