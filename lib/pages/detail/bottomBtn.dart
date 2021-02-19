/*
 * @Author: dezhi
 * @Date: 2021-02-18
 * @LastEditTime: 2021-01-18
 * @Description:详情底部按钮
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class BottomBtn extends StatefulWidget{
  final Color color;
  final ValueChanged cb;
  final String title;
  
  BottomBtn({Key key,this.title,this.cb,this.color}):super(key:key);
  _BottomBtn createState() => _BottomBtn(this.title,this.cb,this.color);
}

class _BottomBtn extends State<BottomBtn>{
  final Color color ;
  final ValueChanged cb;
  final String title;
  _BottomBtn(this.title,this.cb,this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          cb(this.title);
        },
        child: Container(
          margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
          height: ScreenAdapter.height(66),
          width: ScreenAdapter.width(200),
          alignment: Alignment.center,
          child: Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(30)),
        )
        
      );
  }
}