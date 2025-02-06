import 'category.dto.dart';

class CategoryListDto {
  final int? currentPage;
  final int? maxPage;
  final String? transactionType;
  final List<CategoryDto>? categories;

  CategoryListDto(
      {this.currentPage, this.maxPage, this.transactionType, this.categories});
}
