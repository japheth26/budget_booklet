import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/auth/presentation/atoms/title_header_atom.dart';
import 'package:hani/features/category/data/dto/get_categories.dto.dart';
import 'package:hani/features/category/domain/bloc/category/category_bloc.dart';
import 'package:hani/features/tag/data/dto/get_all_tags.dto.dart';
import 'package:hani/features/tag/domain/bloc/tag/tag_bloc.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';

import '../../../../core/state_status/state_status.dart';

@RoutePage()
class WalletLoadingPage extends StatefulWidget {
  const WalletLoadingPage({super.key, required this.walletId});

  final String walletId;

  @override
  State<WalletLoadingPage> createState() => _WalletLoadingPageState();
}

class _WalletLoadingPageState extends State<WalletLoadingPage> {
  late StackRouter _router;
  late CategoryBloc _categoryBloc;
  late TagBloc _tagBloc;
  late WalletBloc _walletBloc;

  late String _walletId;

  int retry = 0;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
    _categoryBloc = getIt<CategoryBloc>();
    _tagBloc = getIt<TagBloc>();
    _walletBloc = getIt<WalletBloc>();

    _walletId = widget.walletId;
    _walletBloc.add(WalletEvent.selectWallet(walletId: _walletId));
    _initialize();
  }

  void _initialize() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getAllTags();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _handleTagListener(),
        _handleCategoryListener(),
      ],
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TitleHeaderAtom(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: LinearProgressIndicator(
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BlocListener _handleTagListener() {
    return BlocListener<TagBloc, TagState>(
      bloc: _tagBloc,
      listener: (context, state) {
        if (state.retrieved) {
          _getAllCagories();
        }

        if (state.stateStatus == StateStatus.error) {
          print(state.errorMessage);
        }
      },
    );
  }

  BlocListener _handleCategoryListener() {
    return BlocListener<CategoryBloc, CategoryState>(
      bloc: _categoryBloc,
      listener: (context, state) {
        if (state.retrieved) {
          _router.replace(const MoneyTrackerRoute());
        }

        if (state.stateStatus == StateStatus.error) {
          print(state.errorMessage);
        }
      },
    );
  }

  void _getAllTags() {
    _tagBloc.add(TagEvent.getAllTags(dto: GetAllTagsDto(walletId: _walletId)));
  }

  void _getAllCagories() {
    _categoryBloc.add(CategoryEvent.getAllCategories(
        dto: GetAllCategoriesDto(walletId: _walletId)));
  }
}
