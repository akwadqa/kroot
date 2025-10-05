

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wedding_app/features/scan_qr_code/data/datasources/scan_drive_qr_datasource.dart';
import 'package:wedding_app/features/scan_qr_code/domain/model/checkin_models.dart';
import 'package:wedding_app/features/scan_qr_code/domain/model/gates_info_model.dart';
import 'package:wedding_app/src/constants/Api/api_response.dart';
import 'package:wedding_app/src/network/exception/dio_exceptions.dart';
import 'package:wedding_app/src/network/services/dio_client.dart';

part 'scan_driver_qr_repository.g.dart';

@Riverpod(keepAlive: true)
ScanDriverQrRepository scanDriverQrRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return ScanDriverQrRepository(ScanDriveQrDatasource(networkService));
}

class ScanDriverQrRepository {
  final ScanDriveQrDatasource _remoteDataSource;

  ScanDriverQrRepository(this._remoteDataSource);


  Future<ApiResponse<List<GatesInfoModel>>> getAllAvailableGates() async {
    try {
      final result = await _remoteDataSource.getAllAvailableGates();

      if (result.status == 200) {
        return result;
      } else {
        throw Exception('Failed to Fetch getAllAvailableGates: ${result.message}');
      } 
    } catch (e) {
      throw Exception('Failed to Fetch getAllAvailableGates: $e');
    }
  }
  Future<ApiResponse<CheckinPayload>> fetchByQrCode({String? gateName,String? qrResult,String? inviteeId}) async {
    final response = await _remoteDataSource.fetchByQrCode(gateName: gateName,inviteeId: inviteeId,qrResult: qrResult);
    //  if (response.status == 200) {
      return response ;
    // } else {
    //   throw AppException(response.message ?? "An unknown error occurred");
    // }
    // return await _handleAuthResponse(response);
  }
  // }
}
