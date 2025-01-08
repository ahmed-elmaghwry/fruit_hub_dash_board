import 'dart:io';

import 'package:fruit_hub_dash_board/core/services/stoarage_service.dart';
import 'package:fruit_hub_dash_board/core/utils/backend_endpoint.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as b;

class SupabaseStorageService implements StorageService {
  static late Supabase _supabase;

  static createBucket({required String bucketName}) async {
    var buckets = await _supabase.client.storage.listBuckets();

    bool isBucketExits = false;

    for (var bucket in buckets) {
      if (bucket.id == bucketName) {
        isBucketExits = true;
        break;
      }
    }
    if (!isBucketExits) {
      await _supabase.client.storage.createBucket(bucketName);
    }
  }

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
    var resutl = await _supabase.client.storage
        .from(BackendEndpoint.bucketName)
        .upload('$path/$fileName.$extensionName', file);



    final String publicUrl = _supabase.client
        .storage
        .from(BackendEndpoint.bucketName)
        .getPublicUrl('$path/$fileName.$extensionName');
print('mo5:>>>>>>${publicUrl}');

    return resutl;
  }
}