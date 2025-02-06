// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String API_ENDPOINT = dotenv.env['API_ENDPOINT']!;
  static String PROJECT_ID = dotenv.env['PROJECT_ID']!;
  static String BUDGET_BOOKLET_DB = dotenv.env['BUDGET_BOOKLET_DB']!;
  static String USERS_COLLECTION_ID = dotenv.env['USERS_COLLECTION_ID']!;
  static String WALLETS_COLLECTION_ID = dotenv.env['WALLETS_COLLECTION_ID']!;
  static String ASSIGNED_WALLET_COLLECTION_ID =
      dotenv.env['ASSIGNED_WALLET_COLLECTION_ID']!;
  static String TAG_COLLECTION_ID = dotenv.env['TAG_COLLECTION_ID']!;
  static String CATEGORY_COLLECTION_ID = dotenv.env['CATEGORY_COLLECTION_ID']!;
  static String CATEGORY_TAG_COLLECTION_ID =
      dotenv.env['CATEGORY_TAG_COLLECTION_ID']!;
}
