import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/tag/data/dto/create_tag.dto.dart';
import 'package:hani/features/tag/data/dto/get_all_tags.dto.dart';
import 'package:hani/features/tag/data/dto/update_tag.dto.dart';
import 'package:hani/features/tag/data/repositories/tag.repository.dart';
import 'package:hani/features/tag/domain/vo/create_tag.vo.dart';
import 'package:hani/features/tag/domain/vo/delete_tag.vo.dart';
import 'package:hani/features/tag/domain/vo/get_all_tags.vo.dart';
import 'package:hani/features/tag/domain/vo/update_tag.vo.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:injectable/injectable.dart';

import '../../../data/dto/delete_tag.dto.dart';
import '../../entities/tag.entity.dart';

part 'tag_event.dart';
part 'tag_state.dart';
part 'tag_bloc.freezed.dart';

@lazySingleton
class TagBloc extends Bloc<TagEvent, TagState> {
  TagBloc(TagRepository tagRepository) : super(TagState.initial()) {
    on<_GetAllTags>((event, emit) async {
      emit(TagState.loading(state));

      final voOrError = GetAllTagsVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(TagState.error(state, voOrError.getError));
        emit(TagState.loaded(state));
        return;
      }

      final result = await tagRepository.getAllTags(voOrError.getValue);

      if (result.isFailure) {
        emit(TagState.error(state, result.getError));
        emit(TagState.loaded(state));
        return;
      }

      emit(TagState.saveAllTags(state, result.getValue));
      emit(state.copyWith(retrieved: true));
      emit(state.copyWith(retrieved: false));
      emit(TagState.loaded(state));
    });

    on<_CreateTag>((event, emit) async {
      emit(TagState.loading(state));

      final voOrError = CreateTagVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(TagState.error(state, voOrError.getError));
        emit(TagState.loaded(state));
        return;
      }

      final result = await tagRepository.createTag(voOrError.getValue);

      if (result.isFailure) {
        emit(TagState.error(state, result.getError));
        emit(TagState.loaded(state));
        return;
      }

      emit(TagState.addTag(state, result.getValue));
      emit(state.copyWith(added: true));
      emit(state.copyWith(added: false));
      emit(TagState.success(state, 'Tag successfully created!'));
      emit(TagState.loaded(state));
    });

    on<_UpdateTag>((event, emit) async {
      emit(TagState.loading(state));

      final voOrError = UpdateTagVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(TagState.error(state, voOrError.getError));
        emit(TagState.loaded(state));
        return;
      }

      final result = await tagRepository.updateTag(voOrError.getValue);

      if (result.isFailure) {
        emit(TagState.error(state, result.getError));
        emit(TagState.loaded(state));
        return;
      }

      emit(TagState.updateTag(state, result.getValue));
      emit(state.copyWith(added: true));
      emit(state.copyWith(added: false));
      emit(TagState.success(state, 'Tag successfully updated!'));
      emit(TagState.loaded(state));
    });

    on<_DeleteTag>((event, emit) async {
      emit(TagState.loading(state));

      final voOrError = DeleteTagVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(TagState.error(state, voOrError.getError));
        emit(TagState.loaded(state));
        return;
      }

      final result = await tagRepository.deleteTag(voOrError.getValue);

      if (result.isFailure) {
        emit(TagState.error(state, result.getError));
        emit(TagState.loaded(state));
        return;
      }

      emit(TagState.updateTag(state, result.getValue));
      emit(state.copyWith(added: true));
      emit(state.copyWith(added: false));
      emit(TagState.success(state, 'Tag successfully deleted!'));
      emit(TagState.loaded(state));
    });

    on<_SelectTag>((event, emit) {
      emit(TagState.selectTag(state, event.tagId));
    });

    on<_RemoveTag>((event, emit) {
      emit(TagState.removeTag(state, event.tagId));
    });

    on<_ClearSelectedTags>((event, emit) {
      emit(TagState.clearSelectedTags(state));
    });

    on<_SaveSelectedTags>((event, emit) {
      emit(TagState.saveSelectedTags(state, event.selectedTags));
    });
  }
}
