import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class DetailPictureController extends GetxController{
  final Dio _dio = Dio();
  var pictureDetail = {}.obs;

  void fetchPicturesDetail(int id) async {
    try {
      final response = await _dio.get('https://picsum.photos/id/$id/info');
      pictureDetail.value = response.data;
    } catch (e) {
      Get.snackbar('error', 'Failed to fetch picture detail: $e');
    }
  }
  @override
  void onInit(){
    super.onInit();
    final int pictureId = int.tryParse(Get.arguments['id']) ?? 0;
    fetchPicturesDetail(pictureId);
  }
}
