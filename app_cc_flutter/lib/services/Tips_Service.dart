import 'storage_service.dart';

class TipsService {
  final _storageService = StorageService();

  Future<void> saveTip(String title, String content) async {
    await _storageService.saveTip(title, content);
  }

  Future<List<Map<String, dynamic>>> getTips() async {
    return await _storageService.getTips();
  }
}