

import 'package:dio/dio.dart';
import '../utils/common.dart';

class Service {
  getFocuInfo() async{
    return  await Dio().get("$URL/focus/info");
  }
  getProductInfo(params) async{
    return await Dio().get("$URL/product/list",queryParameters: params);
  }
  //获取分类信息
  getCategoryInfo() async{
    return await Dio().get("$URL/category/list");
  }
}