import 'package:hani/core/result/result.dart';
import 'package:hani/features/tag/data/datasources/tag_remote.datasource.dart';
import 'package:hani/features/tag/data/dto/tag.dto.dart';
import 'package:hani/features/tag/domain/entities/tag.entity.dart';
import 'package:hani/features/tag/domain/vo/create_tag.vo.dart';
import 'package:hani/features/tag/domain/vo/delete_tag.vo.dart';
import 'package:hani/features/tag/domain/vo/get_all_tags.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/state_status/error_messages.dart';
import '../../domain/vo/update_tag.vo.dart';

@lazySingleton
class TagRepository {
  late Logger _logger;
  late TagRemoteDatasource _tagRemoteDatasource;

  TagRepository(Logger logger, TagRemoteDatasource tagRemoteDatasource) {
    _logger = logger;
    _tagRemoteDatasource = tagRemoteDatasource;
  }

  Future<Result<List<TagEntity>>> getAllTags(GetAllTagsVo vo) async {
    try {
      const limit = 100;
      int maxPage = -1;
      int page = 1;

      final List<TagEntity> tags = [];

      while (maxPage == -1 || maxPage > page) {
        final result =
            await _tagRemoteDatasource.getTags(vo.walletId, page, limit);

        if (maxPage == -1) {
          maxPage = (result.total / limit).ceil();
        }

        final tagsDto =
            result.documents.map((e) => TagDto.fromJson(e.data)).toList();

        for (final tagDto in tagsDto) {
          final entityOrError = TagEntity.create(tagDto);

          if (entityOrError.isFailure) {
            _logger.e(entityOrError.getError);
            continue;
          }

          tags.add(entityOrError.getValue);
        }

        page++;
      }

      return Result.ok(data: tags);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<TagEntity>> createTag(CreateTagVo vo) async {
    try {
      final result = await _tagRemoteDatasource.createTag(vo);

      return TagEntity.create(TagDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<TagEntity>> updateTag(UpdateTagVo vo) async {
    try {
      final result = await _tagRemoteDatasource.updateTag(vo);

      return TagEntity.create(TagDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<TagEntity>> deleteTag(DeleteTagVo vo) async {
    try {
      final result = await _tagRemoteDatasource.deleteTag(vo);

      return TagEntity.create(TagDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
