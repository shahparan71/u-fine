import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:u_fine/core/error/failure.dart';
import 'package:u_fine/core/util/constance.dart';
import 'package:u_fine/data/models/user_models.dart';

abstract class DataSourceRepoLogReg {
  Future<User> getUserDetails();
}

class LoginData extends DataSourceRepoLogReg {

  @override
  Future<User> getUserDetails() async {
    try {
      // Make HTTP GET request to fetch movie data

      var params = {"Password": "12345", "Username": "ludovico.carlino@savethechildren.org"};

      final response = await Dio().post(
        Api.userLogin(),
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(params),
      );

      // Check if response is successful
      if (response.statusCode == 200) {
        print("object${response.data}");
        //var jsonResponse = jsonDecode(response.data);
        //print("jsonResponse${jsonResponse}");
        return User.fromJson(response.data);

        final User user1 = User.fromJson(response.data.map((json) => User.fromJson(json)));
        return user1;
      } else {
        throw ServerFailure('Failed to fetch : ${response.statusMessage}');
      }
    } on DioException catch (e) {
      // Handle DioError and map to Failure class
      throw ServerFailure.fromDioError(e);
    }
  }
}
