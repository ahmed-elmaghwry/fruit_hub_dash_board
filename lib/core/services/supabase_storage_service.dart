import 'dart:io';

import 'package:fruit_hub_dash_board/core/services/stoarage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as b;
import '../utils/backend_endpoint.dart';

class SupabaseStorageService implements StorageService {
  static late Supabase _supabase;

  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: BackendEndpoint.kSupabaseUrl,
      anonKey: BackendEndpoint.kSupabaseKey,
    );
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    String extensionName = b.extension(file.path);
    var result = await _supabase.client.storage
        .from(BackendEndpoint.bucketName)
        .upload('$path/$fileName.$extensionName', file);
    return result;

  }
}
