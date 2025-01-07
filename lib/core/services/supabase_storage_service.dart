import 'dart:io';

import 'package:fruit_hub_dash_board/core/services/stoarage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/backend_endpoint.dart';

class SupabaseStorageService implements StorageService {

  static late  Supabase _supabase;

  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: BackendEndpoint.kSupabaseUrl,
      anonKey: BackendEndpoint.kSupabaseKey,
    );
  }

  @override
  Future<String> uploadFile(File file, String path) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}
