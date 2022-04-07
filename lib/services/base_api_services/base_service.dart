// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';
import '/services/base_api_services/base_api_constants.dart';
import 'package:http/http.dart';

import '../success_err_snackbar.dart';

class BaseService extends BaseApiConstants {
  Future<dynamic> responseHandle<T>({
    required Function request,
    required Function(Response response) callBackSuccess,
    Function(dynamic responseJson)? optionalCallBackError,
  }) async {
    Response? response;
    try {
      response = await request();
      if (response != null) {
        var responseJson = jsonDecode(response.body);
        if (responseJson['err'] == null) {
          return await callBackSuccess(response);
        } else {
          if (optionalCallBackError != null) {
            return await optionalCallBackError(responseJson);
          } else {
            SuccessAndErrSnackBar.errSnackBar(responseJson["err"]);
            return T;
          }
        }
      }
    } on SocketException {
      SuccessAndErrSnackBar.errSnackBar(connectionProblemMessage);
      return T;
    } catch (e) {
      SuccessAndErrSnackBar.errSnackBar(otherProblemMessage);
      return T;
    } finally {
      if (response != null) {
        print(response.request!.url.toString());
        print(response.request!.method.toString());
        print('${response.statusCode}');
      }
    }
  }

  Uri getUriParseUrl({required String path}) {
    return Uri.parse(apiBaseUrl + path);
  }

  Map<String, String> getHeadersOnlyToken(String userToken) {
    return {
      "Content-Type": contentType,
      "Authorization": "Bearer " + userToken
    };
  }
}
