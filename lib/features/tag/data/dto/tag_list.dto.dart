import 'tag.dto.dart';

class TagListDto {
  final int? currentPage;
  final int? maxPage;
  final String? transactionType;
  final List<TagDto>? tags;

  TagListDto({this.currentPage, this.maxPage, this.transactionType, this.tags});
}
