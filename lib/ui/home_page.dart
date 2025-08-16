import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Container(
          width: double.infinity,
          height: 150.h,
          child: Swiper(
            itemCount: 3,
            autoplay: true,
            control: const SwiperControl(),
            pagination: const SwiperPagination(),
            itemBuilder: (context, index) {
              return Container(
                height: 150.h,
                color: Colors.blue,
              );
          },)
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _listItemView();
              })
        )
      ],)),
    );
  }
  Widget _listItemView() {
    return Container(
      margin: EdgeInsets.only(top: 12.h, left: 12.w, right: 12.w),
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(border: Border.all(color: Colors.black12), borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset("assets/images/avatar.jpg", width: 30.r, height: 30.r, fit: BoxFit.fill,)
              ),
              SizedBox(width: 5.w,),
              Text("姓名", style: TextStyle(color: Colors.black),),
              Expanded(child: SizedBox()),
              Padding(padding: EdgeInsets.only(right: 5.w), child:
              Text("2025-8-16", style: TextStyle(color: Colors.black))),
              Text("置顶", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "卧槽",
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Text("分类", style: TextStyle(color: Colors.green, fontSize: 12.sp),),
              Expanded(child: SizedBox()),
              Image.asset("assets/images/avatar.jpg", width: 30.r, height: 30.r),
            ],
          )
        ],
      )
    );
  }
}