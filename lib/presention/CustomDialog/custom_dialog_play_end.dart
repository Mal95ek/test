import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomDialogPlayAll extends StatefulWidget {
  @override
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}
class _CustomDialogPlayAllState extends State<CustomDialogPlayAll> {
  int value =0;
 List<Map<String , bool>> listening =
 [{' لفاتحه': false },{'استماع للصفحه كامله':false},{'استماع للحزب ':false },{'الاستماع للجزء':false}];
 Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: AlertDialog(
        title: Text('الاستماع',textAlign: TextAlign.center,),
        content: Text("الرجاء الاختيار الماده الماده المراد سماعها لتلاوتها "),
        actions: [
          Column(children: [
            ...listening.map((e) => RadioListTile(value: e.keys.first, groupValue: e.keys,onChanged: (val){
            setState(() {
              val = value;
            });
          },)).toList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [   MaterialButton(onPressed: (){
            } , child: Text('النعم',)),MaterialButton(onPressed: (){} , child: Text('لا'),)],)
         ],
        ),
          ],
      )
    ));
  }
}