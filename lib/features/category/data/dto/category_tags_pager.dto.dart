import 'category_tag.dto.dart';

class CategoryTagsPagerDto {
  final int? page;
  final int? maxPage;
  final List<CategoryTagDto>? categoryTags;

  CategoryTagsPagerDto({this.page, this.maxPage, this.categoryTags});
}
